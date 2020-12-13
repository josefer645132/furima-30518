window.addEventListener('load', function(){
  
  const priceInput = document.getElementById("item-price");
  console.log(priceInput);


  priceInput.addEventListener("input", () => {
  const inputValue = priceInput.value;
  console.log(inputValue);

  
  const addTaxDom = document.getElementById("add-tax-price"); 
  addTaxDom.innerHTML = Math.floor (inputValue * 0.1)


  const addProfitDom = document.getElementById("profit"); 
  addProfitDom.innerHTML = Math.floor (inputValue * 0.9)

      




  })
 

})




