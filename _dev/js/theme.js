/**
 * This is the entry point for specific javascript of theme
 */

$(document).ready(() => {
    // open menu
    $('.btn_lines').click(function(event) {
        event.preventDefault();
        //console.log(event);
        $(event.currentTarget).toggleClass('close');
        $('.header-top').toggleClass('visible');
    });
});
