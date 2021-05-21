export default {
    name: "TheProductThumbnail",

    props: ["product"],

    template: `
   
    <div class="product">
          <p class="title">{{ product.title  }}<p/>
        <img :src='"images/" + product.img_jpg' alt="product title" width="250px" height='170px'>
        <p>{{ product.price  }}<p/>
        <p class="description">{{ product.description  }}<p/>

    <video controls :src='"videos/" + product.video' alt="video title" width="250px" height='170px'> </video>

        <button @click="updateCart(product,'subtract')" class="cart__button">-</button>
        <span class="cart__quantity">{{ product.quantity }}</span>
        <button  @click="updateCart(product, 'add')" class="cart__button">+</button>
    </div>`,

}