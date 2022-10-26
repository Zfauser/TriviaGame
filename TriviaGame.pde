/* Assignment: Assignment 5 - Multiple Choice Trivia Game
Purpose: To create a trivia game in processing
Start Date: October 12, 2022 */

// Define Variables and Arrays
StringList questions;
StringList choices;
StringList correctAnswers;
int q = 0;
int currentQuestion = 0;
int score = 0;
boolean startScreen = true;
boolean gameover = false;
String result = "";

// setup() runs once at the beginning of the program
void setup() {
    // Set the background color
    background(112, 112, 112);
    // set the size of the window
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

    // Create the questions array
    // the questions array contains the questions for the game
    questions = new StringList();
    // Question 1
    questions.append("What is the capital of The United States of America?");
    // Question 2
    questions.append("What is the capital of Canada?");
    // Question 3
    questions.append("What is the capital of Mexico?");
    // Question 4
    questions.append("What is the capital of Brazil?");
    // Question 5
    questions.append("What is the capital of Argentina?");
    // Question 6
    questions.append("What is the capital of Australia?");
    // Question 7
    questions.append("What is the capital of New Zealand?");
    // Question 8
    questions.append("What is the capital of China?");
    // Question 9
    questions.append("What is the capital of Japan?");
    // Question 10
    questions.append("What is the capital of India?");

    // Create the correctAnswers array
    // The correct answers for the questions
    correctAnswers = new StringList();
    // Correct Answer 1
    correctAnswers.append("Washington D.C.");
    // Correct Answer 2
    correctAnswers.append("Ottawa");
    // Correct Answer 3
    correctAnswers.append("Mexico City");
    // Correct Answer 4
    correctAnswers.append("Brasilia");
    // Correct Answer 5
    correctAnswers.append("Buenos Aires");
    // Correct Answer 6
    correctAnswers.append("Canberra");
    // Correct Answer 7
    correctAnswers.append("Wellington");
    // Correct Answer 8
    correctAnswers.append("Beijing");
    // Correct Answer 9
    correctAnswers.append("Tokyo");
    // Correct Answer 10
    correctAnswers.append("New Delhi");

    // Create the choices array
    // the choices array contains the choices for each question
    choices = new StringList();
    // question 1 (usa)
    choices.append("Washington D.C."); // correct
    choices.append("New York City");
    choices.append("Los Angeles");
    choices.append("Chicago");
    // question 2 (canada)
    choices.append("Toronto");
    choices.append("Vancouver");
    choices.append("Ottawa"); // correct
    choices.append("Montreal");
    // question 3 (mexico)
    choices.append("Guadalajara");
    choices.append("Mexico City"); // correct
    choices.append("Monterrey");
    choices.append("Tijuana");
    // question 4 (brazil)
    choices.append("Rio de Janeiro");
    choices.append("Sao Paulo");
    choices.append("Salvador");
    choices.append("Brasilia"); // correct
    // question 5 (argentina)
    choices.append("Cordoba");
    choices.append("Buenos Aires"); // correct
    choices.append("Rosario");
    choices.append("Mendoza");
    // question 6 (australia)
    choices.append("Canberra"); // correct
    choices.append("Sydney");
    choices.append("Melbourne");
    choices.append("Brisbane");
    // question 7 (new zealand)
    choices.append("Auckland");
    choices.append("Christchurch");
    choices.append("Wellington"); // correct
    choices.append("Hamilton");
    // question 8 (china)
    choices.append("Shanghai");
    choices.append("Guangzhou");
    choices.append("Shenzhen");
    choices.append("Beijing"); // correct
    // question 9 (japan)
    choices.append("Osaka");
    choices.append("Nagoya");
    choices.append("Sapporo");
    choices.append("Tokyo"); // correct
    // question 10 (india)
    choices.append("Mumbai");
    choices.append("Bangalore");
    choices.append("Kolkata");
    choices.append("New Delhi"); // correct
}

// draw function runs over and over again
void draw() {
}

// the main game
void trivia() {
    // if all forty options have been displayed, the game is over
    if (q == 40)
    {
        // set background color
        background(112, 112, 112);
        // display text in white
        fill(255);
        // display text in size 30
        textSize(30);
        // display text in the middle of the screen
        textAlign(CENTER, BOTTOM);
        // display the final score
        text("You got " + score + " out of 10 correct!", width/2, 120);
        // display percentage
        text("Your score is " + score*10 + "%", width/2, 160);
        // display instructions
        text("Click to play again!", width/2, 200);
        // choose the result based on the score
        if (score == 10)
        {
            result = "Perfect Score!";
        }
        else if (score >= 8)
        {
            result = "Excellent!";
        }
        else if (score >= 6)
        {
            result = "Good!";
        }
        else if (score >= 4)
        {
            result = "Not bad!";
        }
        else if (score >= 2)
        {
            result = "You can do better!";
        }
        else
        {
            result = "You need to study!";
        }
        // display the result
        text(result, width/2, 240);
        // reset the game
        currentQuestion = 0;
        score = 0;
        gameover = true;
    }
    else
    {
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
    // fill white
    fill(255);
    // display text in size 30
    textSize(30);
    // Display the score at the top center of the screen
    textAlign(CENTER, TOP);
    text("Score: " + score, width/2, 0);
    fill(255);
    textSize(30);
    // Display the result at the bottom center of the screen
    textAlign(CENTER, BOTTOM);
    // display the result at the bottom center of the screen
    text(result, width/2, height);
    currentQuestion = currentQuestion + 1;
    }
}

void mousePressed() {
    // if the game is over, reset the game
    if (gameover) {
        // Reset the game
        q = 0;
        currentQuestion = 0;
        score = 0;
        gameover = false;
        result = "";
        trivia();
    }
    // if the start button is pressed, start the game
    else if (startScreen && mouseX > 300 && mouseX < 400 && mouseY > 205 && mouseY < 255) {
        println("Play Button Pressed");
        if (startScreen) {
        startScreen = false;
        }
        trivia();
    }
    // if option 1 is pressed, check if correct
    else if (!startScreen && mouseX > 235 && mouseX < 460 && mouseY > 180 && mouseY < 230) {
        println("Choice 1 Pressed");
        if (choices.get(q-4) == correctAnswers.get(currentQuestion-1)) {
            score = score + 1;
            result = "Correct!";
        }
        else {
            result = "Incorrect! Answer is " + correctAnswers.get(currentQuestion-1);
        }
        trivia();
    }
    // if option 2 is pressed, check if correct
    else if (!startScreen && mouseX > 235 && mouseX < 460 && mouseY > 240 && mouseY < 290) {
        println("Choice 2 Pressed");
        if (choices.get(q-3) == correctAnswers.get(currentQuestion-1)) {
            score = score + 1;
            result = "Correct!";
        }
        else {
            result = "Incorrect! Answer is " + correctAnswers.get(currentQuestion-1);
        }
        trivia();
    }
    // if option 3 is pressed, check if correct
    else if (!startScreen && mouseX > 235 && mouseX < 460 && mouseY > 300 && mouseY < 350) {
        println("Choice 3 Pressed");
        if (choices.get(q-2) == correctAnswers.get(currentQuestion-1)) {
            score = score + 1;
            result = "Correct!";
        }
        else {
            result = "Incorrect! Answer is " + correctAnswers.get(currentQuestion-1);
        }
        trivia();
    }
    // if option 4 is pressed, check if correct
    else if (!startScreen && mouseX > 235 && mouseX < 460 && mouseY > 360 && mouseY < 410) {
        println("Choice 4 Pressed");
        if (choices.get(q-1) == correctAnswers.get(currentQuestion-1)) {
            score = score + 1;
            result = "Correct!";
        }
        else {
            result = "Incorrect! Answer is " + correctAnswers.get(currentQuestion-1);
        }
        trivia();
    }
}
