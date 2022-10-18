// Processing Assignment 4: Create a Trivia Game (with at least 10 questions and multiple choice answers) in which the user uses the mouse to select the correct answer.
// NOTES:
// 1. To achieve a 4+, you must use arrays and include a scoring system.
// 2. Use documentation and a header.
// 3. Make good use of whitespace.
// 4. Use appropriate variable names.

StringList questions;
StringList answers;
StringList choices;
StringList choices2;
StringList choices3;
StringList choices4;
StringList choices5;
StringList choices6;
StringList choices7;
StringList choices8;
StringList choices9;
StringList choices10;
boolean startScreen = true;
int q = 0;
int currentQuestion = 0;
int score = 0;
String result = "";

void setup() {
    background(112, 112, 112);
    size(720, 480);
    // Display text in white
    fill(255);
    // Display text in size 30
    textSize(30);
    // Display text in the middle of the screen
    textAlign(CENTER, BOTTOM);
    // Display the text
    text("Zach's Trivia Game!", width/2, 120);
    // Display Play Button
    fill(0, 0, 0);
    rect(300, 205, 100, 50);
    fill(255, 255, 255);
    textAlign(CENTER, CENTER);
    text("Play", 350, 225);
    // Display Instructions Button
    questions = new StringList();
    questions.append("What is the capital of The United States of America?");
    questions.append("What is the capital of Canada?");
    questions.append("What is the capital of Mexico?");
    questions.append("What is the capital of Brazil?");
    questions.append("What is the capital of Argentina?");
    questions.append("What is the capital of Australia?");
    questions.append("What is the capital of New Zealand?");
    questions.append("What is the capital of China?");
    questions.append("What is the capital of Japan?");
    questions.append("What is the capital of India?");

    answers = new StringList();
    answers.append("Washington D.C.");
    answers.append("Ottawa");
    answers.append("Mexico City");
    answers.append("Brasilia");
    answers.append("Buenos Aires");
    answers.append("Canberra");
    answers.append("Wellington");
    answers.append("Beijing");
    answers.append("Tokyo");
    answers.append("New Delhi");

    choices = new StringList();
    // question 1 (usa)
    choices.append("Washington D.C.");
    choices.append("New York City");
    choices.append("Los Angeles");
    choices.append("Chicago");
    // question 2 (canada)
    choices.append("Ottawa");
    choices.append("Toronto");
    choices.append("Vancouver");
    choices.append("Montreal");
    // question 3 (mexico)
    choices.append("Mexico City");
    choices.append("Guadalajara");
    choices.append("Monterrey");
    choices.append("Tijuana");
    // question 4 (brazil)
    choices.append("Brasilia");
    choices.append("Rio de Janeiro");
    choices.append("Sao Paulo");
    choices.append("Salvador");
    // question 5 (argentina)
    choices.append("Buenos Aires");
    choices.append("Cordoba");
    choices.append("Rosario");
    choices.append("Mendoza");
    // question 6 (australia)
    choices.append("Canberra");
    choices.append("Sydney");
    choices.append("Melbourne");
    choices.append("Brisbane");
    // question 7 (new zealand)
    choices.append("Wellington");
    choices.append("Auckland");
    choices.append("Christchurch");
    choices.append("Hamilton");
    // question 8 (china)
    choices.append("Beijing");
    choices.append("Shanghai");
    choices.append("Guangzhou");
    choices.append("Shenzhen");
    // question 9 (japan)
    choices.append("Tokyo");
    choices.append("Osaka");
    choices.append("Nagoya");
    choices.append("Sapporo");
    // question 10 (india)
    choices.append("New Delhi");
    choices.append("Mumbai");
    choices.append("Bangalore");
    choices.append("Kolkata");

}

void draw() {
}

void trivia() {
    // Clear the screen
    background(112, 112, 112);
    // Display text in white
    fill(255);
    // Display text in size 30
    textSize(30);
    // Display text in the middle of the screen
    textAlign(CENTER, BOTTOM);
    // Display the question
    text(questions.get(currentQuestion), width/2, 120);
    currentQuestion = currentQuestion + 1;
    // Display the choices
    fill(0, 0, 0);
    rect(235, 180, 225, 50);
    rect(235, 240, 225, 50);
    rect(235, 300, 225, 50);
    rect(235, 360, 225, 50);
    fill(255, 255, 255);
    textAlign(CENTER, CENTER);
    text(choices.get(q), 350, 200);
    q = q + 1;
    text(choices.get(q), 350, 260);
    q = q + 1;
    text(choices.get(q), 350, 320);
    q = q + 1;
    text(choices.get(q), 350, 380);
    q = q + 1;
    // Display the score at the top center of the screen
    fill(255);
    textSize(30);
    textAlign(CENTER, TOP);
    text("Score: " + score, width/2, 0);
    // Display the result at the bottom center of the screen
    fill(255);
    textSize(30);
    textAlign(CENTER, BOTTOM);
    text(result, width/2, height);
    if (startScreen) {
        startScreen = false;
    }
}

void mousePressed() {
    if (startScreen && mouseX > 300 && mouseX < 400 && mouseY > 205 && mouseY < 255) {
        println("Play Button Pressed");
        trivia();
    }
    if (!startScreen && mouseX > 235 && mouseX < 460 && mouseY > 180 && mouseY < 230) {
        println("Choice 1 Pressed");
        if (answers.get(0) == choices.get(0)) {
            result = "Correct!";
            score = score + 1;
            trivia();
        } else {
            result = "Incorrect!";
            trivia();
        }
    }
    else if (!startScreen && mouseX > 235 && mouseX < 460 && mouseY > 240 && mouseY < 290) {
        println("Choice 2 Pressed");
        if (answers.get(0) == choices.get(1)) {
            result = "Incorrect!";
            trivia();
        } else {
            result = "Incorrect!";
            trivia();
        }
    }
    else if (!startScreen && mouseX > 235 && mouseX < 460 && mouseY > 300 && mouseY < 350) {
        println("Choice 3 Pressed");
        if (answers.get(0) == choices.get(2)) {
            result = "Incorrect!";
        } else {
            result = "Incorrect!";
        }
    }
    else if (!startScreen && mouseX > 235 && mouseX < 460 && mouseY > 360 && mouseY < 410) {
        println("Choice 4 Pressed");
        if (answers.get(0) == choices.get(3)) {
            result = "Incorrect!";
        } else {
            result = "Incorrect!";
        }
    }
}