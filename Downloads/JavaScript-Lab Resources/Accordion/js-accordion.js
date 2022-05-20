const question = document.querySelectorAll(".question");

question.forEach(question => {
    question.addEventListener("click", event => {
        question.classList.toggle("active");
        const answerHidden = question.querySelectorAll(".answer hidden");
        if(question.classList.contains("active")) {
            answerHidden.style.maxHeight = question.scrollHeight + "px";
        }
        else {
            answerHidden.style.maxHeight = 0;
        }
    });
});