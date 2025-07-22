document.addEventListener('DOMContentLoaded', function () {
    const textBlock = document.querySelector('.about__text.text');
    const imageBlock = document.querySelector('.about__main-image');
    const maxWidthForText = 375;
    const maxWidthForTriangle = 768;

    if (!textBlock && !imageBlock) return;

    const originalHTML = textBlock ? textBlock.innerHTML.trim() : '';
    let isTextModified = false;

    function truncateText(text, maxLength) {
        const words = text.split(' ');
        let result = '';
        for (let word of words) {
            if ((result + word + ' ').length <= maxLength) {
                result += word + ' ';
            } else {
                break;
            }
        }
        return result.trim();
    }

    function updateTextContent() {
        if (!textBlock) return;

        const isMobile = window.innerWidth <= maxWidthForText;

        if (isMobile && !isTextModified) {
            const truncated = truncateText(originalHTML, 450);
            textBlock.innerHTML = truncated + '... <span class="about__text-button">читать полностью</span>';
            isTextModified = true;
            addReadMoreListener();
        } else if (!isMobile && isTextModified) {
            textBlock.innerHTML = originalHTML;
            isTextModified = false;
        }
    }

    function addReadMoreListener() {
        const btn = textBlock.querySelector('.about__text-button');
        if (!btn) return;

        btn.addEventListener('click', function () {
            if (btn.textContent.trim() === 'читать полностью') {
                textBlock.innerHTML = originalHTML + ' <span class="about__text-button">свернуть</span>';
                addReadMoreListener();
            } else {
                const truncated = truncateText(originalHTML, 450);
                textBlock.innerHTML = truncated + '... <span class="about__text-button">читать полностью</span>';
                addReadMoreListener();
            }
        });
    }

    function updateImageClasses() {
        if (!imageBlock) return;

        const isMobile = window.innerWidth <= maxWidthForTriangle;

        if (isMobile) {
            imageBlock.classList.remove('image--with-left-top-triangle');
        } else {
            if (!imageBlock.classList.contains('image--with-left-top-triangle')) {
                imageBlock.classList.add('image--with-left-top-triangle');
            }
        }
    }

    function updateAll() {
        updateTextContent();
        updateImageClasses();
    }

    updateAll();

    let resizeTimer;
    window.addEventListener('resize', function () {
        clearTimeout(resizeTimer);
        resizeTimer = setTimeout(updateAll, 100);
    });
});