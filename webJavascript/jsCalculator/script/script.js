function Calc() {
    // Get content of the tags
    var Value1 = parseInt(document.querySelector("#Value1").value);
    var Value2 = parseInt(document.querySelector("#Value2").value);
    var Operator = document.querySelector("#Operator").value;

    // calculate variable
    var calculate;


    // Operators
    if (Operator == "add") {
        calculate = Value1 + Value2;
    }
    if (Operator == "min") {
        calculate = Value1 - Value2;
    }
    if (Operator == "div") {
        calculate = Value1 / Value2;
    }
    if (Operator == "mul") {
        calculate = Value1 * Value2
    }

    document.querySelector("#result").innerHTML = calculate;
}