document.addEventListener('turbo:load', function () {
    const alert = document.querySelector('.alert');

    if (alert) {
        setTimeout(() => {
            alert.classList.remove('opacity-100');
            alert.classList.add('opacity-0');
        }, 5000)
        setTimeout(() => {
            alert.computedStyleMap.display = 'none';
        }, 6000)
    }
})