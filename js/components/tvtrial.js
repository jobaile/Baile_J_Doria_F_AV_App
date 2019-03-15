export default {
    props: ['currentuser'],

    template: `
    <div class="container">

        <div class="grid-x" id="vidbox" ref="lbox" v-if="activeInfo">
        <button class="close-button" @click="closebox">
            <span>&times;</span>
        </button>
        
        <div id="lightbox-container">
            <h4 class="media-title">{{mediaDetails.tv_title}}</h4>
        </div>

        <div class="image-container">
            <video autoplay controls muted :src="'video/tv/' + mediaDetails.tv_trailer" class="fs-video"></video>
        </div>

    </div>

    <div>
        <img v-if="activeInfo" v-for="media in retrievedTV" :src="'images/tv/' + media.tv_cover" alt="media thumb" @click="switchActiveMedia(television)" class="img-thumbnail rounded float-left media-thumb">
    </div>

    </div>
    `,

    data() {
        return {
            activeInfo: "television",

            mediaDetails: { 
                source: "",
            },

            retrievedTV: [],
        }
    },

    created: function() {
        console.log('params:', this.$route.params);

        this.loadMedia(null, "television");
    },

    methods: {

        loadMedia(filter, mediaType) {
            // set the active media type
            if (this.activeInfo !== mediaType && mediaType !== null) {
                this.activeInfo= mediaType;
            }
            // build the url based on any filter we pass in (will need to expand on this for audio)

            let url = (filter == null) ? `./admin/tv.php?television=${this.activeInfo}` : `./admin/tv.php?television=${this.mediaType}&&filter=${filter}`;

            fetch(url)
                .then(res => res.json())
                .then(data => {         
                    //grabs the media           
                    this.retrievedTV = data;
                    //grabs the details each
                    this.mediaDetails = data[0];                    
                })
            .catch(function(error) {
                console.error(error);
            });
        },

        switchActiveMedia(television) {
            console.log(television);

            this.mediaDetails = television;
            //opens the lightbox
            // this.$refs.lbox.style.display = "block";
        },

          closebox: function() {
              //closes the lightbox
            this.$refs.lbox.style.display = "none";
          }
        }
}