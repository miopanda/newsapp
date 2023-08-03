window.addEventListener('load', function(){
  const articleCheckButtons = document.querySelectorAll(".article-check-button");
  articleCheckButtons.forEach(function (button) {
    button.addEventListener('click', () => {
      const articleID = button.getAttribute("data");
      const XHR = new XMLHttpRequest();
      XHR.open("GET", `checks/revert/${articleID}`, true);
      XHR.send();
      XHR.onload = () => {
        button.remove()
      }
    });
  });
});