import { fetchData } from "./components/fetch.js";

(() => {

    const porfolio = new Vue({
        data: {
        clickedTitle: '',
        items: [],
        error: ''
        },
        // when page loads
        mounted: () => {
            fetchData("./includes/index.php?category=video").then(data => porfolio.items = data).catch(err => portfolio.error = err);
        },
        methods: {
            clickTitle(e) {
                let allElements = document.querySelectorAll('.link');
                allElements.forEach((item) => {
                    item.classList.remove('selected')
                }) 

                e.currentTarget.classList.add('selected');
                let newSection = e.currentTarget.id;
                fetchData(`./includes/index.php?category=${newSection}`).then(data => porfolio.items = data).catch(err => portfolio.error = err);
            }
        }
    }).$mount('#app')

})()
