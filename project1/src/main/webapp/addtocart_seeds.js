const product = [
    {
        id: 0,
        image: 'https://th.bing.com/th/id/OIP.3YibUW8UhV36wyorVLzX_AHaE7?rs=1&pid=ImgDetMain',
        title: 'Sunflower seeds',
        price: 120,
    },
    {
        id: 1,
        image: 'https://th.bing.com/th/id/OIP.mYEGzaPFNFpb3cja31FoBQHaHa?rs=1&pid=ImgDetMain',
        title: 'Maize seeds',
        price: 60,
    },
    {
        id: 2,
        image: 'https://5.imimg.com/data5/SELLER/Default/2022/7/EI/HU/AE/10979394/hybrid-bitter-gourd-seeds-1000x1000.jpg',
        title: 'Bitter Gourd',
        price: 50,
    },
    {
        id: 3,
        image: 'https://th.bing.com/th/id/R.10a02bcbb4a0de218a67894cda181f45?rik=CPj%2b3h4Kw0vmOA&riu=http%3a%2f%2fimages.lowes.com%2fproduct%2fconverted%2f041530%2f041530571448.jpg&ehk=%2fixfj0gMW950bpoS6IhuAyJktY5VmlipXLeNGu6BLsg%3d&risl=&pid=ImgRaw&r=0',
        title: 'Carrot seeds',
        price: 80,
    }
];
const categories = [...new Set(product.map((item)=>
    {return item}))]
    let i=0;
document.getElementById('root').innerHTML = categories.map((item)=>
{
    var {image, title, price} = item;
    return(
        `<div class='box'>
            <div class='img-box'>
                <img class='images' src=${image}></img>
            </div>
        <div class='bottom'>
        <p>${title}</p>
        <h2>Rs ${price}.00</h2>`+
        "<button onclick='addtocart("+(i++)+")'>Add to cart</button>"+
        `</div>
        </div>`
    )
}).join('')

var cart =[];

function addtocart(a){
    cart.push({...categories[a]});
    displaycart();
}
function delElement(a){
    cart.splice(a, 1);
    displaycart();
}

function displaycart(){
    let j = 0, total=0;
    document.getElementById("count").innerHTML=cart.length;
    if(cart.length==0){
        document.getElementById('cartItem').innerHTML = "Your cart is empty";
        document.getElementById("total").innerHTML = "Rs "+0+".00";
    }
    else{
        document.getElementById("cartItem").innerHTML = cart.map((items)=>
        {
            var {image, title, price} = items;
            total=total+price;
            document.getElementById("total").innerHTML = "Rs "+total+".00";
            return(
                `<div class='cart-item'>
                <div class='row-img'>
                    <img class='rowimg' src=${image}>
                </div>
                <p style='font-size:12px;'>${title}</p>
                <h2 style='font-size: 15px;'>Rs ${price}.00</h2>`+
                "<i class='fa-solid fa-trash' onclick='delElement("+ (j++) +")'></i></div>"
            );
        }).join('');
    }

    
}