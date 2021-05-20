export default {
    name: "TheProductThumbnail",

    props: ["product"],

    template: `
    <div>
        <img :src='"images/" + product.img_jpg' alt="product thumb" width="250px" height='170px'>



        <!-- <video :src='"videos/" + product.video' alt="product thumb" width="250px" height='170px'> -->

        <button></Button>
    </div>
   

    `
}