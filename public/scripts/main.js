import Vue from 'https://cdn.jsdelivr.net/npm/vue@2.6.12/dist/vue.esm.browser.js';
import TheProductThumb from './components/TheProductThumbnailComponent.js';


(() => {
    const vm = new Vue({
        data: {
            allProducts: [],
            showCart: false
        },

        created: function() {
            fetch('/api/products')
            .then(res => res.json())
            .then(data => {
                console.table(data);
                this.allProducts = data;
            })
            .catch(err => console.error(err));
        },

       computed: {
           cart() {
               return this.products.filter(product => product.quantity > 0);
           },
           totalQuantity() {
               return this.products.reduce(
                   (total, product) => total + product.quantity,
                   0
               );
           }

        },

        methods: {
            updateCart(product, updateType){
                for ( let i = 0; i < this.products.length; i++) {
                    if (this.products[i].id === product.id) {
                        if (updateType === 'subtract') {
                            if (this.products[i].quantity !== 0) {
                                this.products[i].quantity--;                            }
                        }
                    }else {
                        this.product[i].quantity++;
                    }

                    break;
                }
            }

        },


        components: {
            productthumb: TheProductThumb,
          
        }
    }).$mount("#app");
})();

