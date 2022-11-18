const transactType= document.querySelector("#transact-type");

const paymentCard= document.querySelector(".payment-card");
const transferCard= document.querySelector(".transfer-card");
const depositCard= document.querySelector(".deposit-card");
const whitdrawCard= document.querySelector(".withdraw-card");

transactType.addEventListener("change", function(){
    switch(transactType.value){
        case "payment": 
            paymentCard.style.display= "block";
            depositCard.style.display= "none";
            whitdrawCard.style.display= "none";
            transferCard.style.display= "none";

        break;

        case "deposit": 
            depositCard.style.display= "block";
            transferCard.style.display= "none";
            paymentCard.style.display= "none";
            whitdrawCard.style.display= "none";
        break;

        case "whitdraw": 
            whitdrawCard.style.display= "block";
            paymentCard.style.display= "none";
            depositCard.style.display= "none";
            transferCard.style.display= "none";

        break;

        case "transfer": 
            transferCard.style.display= "block";
            paymentCard.style.display= "none";
            depositCard.style.display= "none";
            whitdrawCard.style.display= "none";
        break;

    }
});