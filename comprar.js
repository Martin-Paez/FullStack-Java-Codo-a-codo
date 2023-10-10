function calcularTotal() 
{
    const cantidad = parseInt(document.getElementById('cantidad').value);
    const precioUnitario = 5000; 
    const total = cantidad * precioUnitario;
    document.getElementById('total').textContent = total;
}

document.getElementById('cantidad').addEventListener('input', calcularTotal);

document.getElementById('comprar').addEventListener('click', function() {
    const cantidad = parseInt(document.getElementById('cantidad').value);
    if ( isNaN(cantidad) || cantidad <= 0 )
        alert('Ingrese una cantidad y presione comprar.');
    else
        alert('Compra exitosa. Gracias por tu compra.');
});

