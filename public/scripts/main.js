import Vue from 'https://cdn.jsdelivr.net/npm/vue@2.6.12/dist/vue.esm.browser.js';
import TheProductThumb from './components/TheProductThumbnailComponent.js';


(() => {
    const vm = new Vue({
        data: {
            allProducts: []
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

        methods: {

        },
        components: {
            productthumb: TheProductThumb,
          
        }
    }).$mount("#app");
})();