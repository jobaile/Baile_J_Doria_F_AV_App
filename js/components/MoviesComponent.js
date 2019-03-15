export default {
    props: ['currentuser'],

    template: `
    <div class="container">

        <div class="grid-x" id="vidbox" ref="lbox" v-if="activeInfo">
        <button class="close-button" @click="closebox">
            <span>&times;</span>
        </button>
        
        <div id="lightbox-container">
            <h4 class="media-title">{{mediaDetails.movies_title}}</h4>
            <p> Sample description sample description sample description sample description</p>
        </div>

        <div class="image-container">
            <video autoplay controls muted :src="'video/' + mediaDetails.movies_trailer"></video>
        </div>

    </div>
    
    <div id="yearlinks">
    <ul>
        <li><a href="#">2000s</a></li>
        <li><a href="#">1990s</a></li>
        <li><a href="#">1980s</a></li>
        <li><a href="#">1970s</a></li>
        <li><a href="#">All</a></li>
    </ul>
    <div>

    <div id="movieSelect" class="grid-x grid-margin-x">
        <img v-if="activeInfo" v-for="media in retrievedMedia" :src="'images/movie/' + media.movies_cover" alt="media thumb" @click="switchActiveMedia(media)" class="img-thumbnail rounded float-left media-thumb cell small-6 medium-4 large-3">
    </div>

    </div>
    `,

    data() {
        return {
            activeInfo: "video",

            mediaDetails: { 
                source: "",
            },

            retrievedMedia: [],
        }
    },

    created: function() {
        console.log('params:', this.$route.params);

        this.loadMedia(null, "video");
    },

    methods: {

        loadMedia(filter, mediaType) {
            // set the active media type
            if (this.activeInfo !== mediaType && mediaType !== null) {
                this.activeInfo= mediaType;
            }
            // build the url based on any filter we pass in (will need to expand on this for audio)

            let url = (filter == null) ? `./admin/movie.php?video=${this.activeInfo}` : `./admin/movie.php?video=${this.mediaType}&&filter=${filter}`;

            fetch(url)
                .then(res => res.json())
                .then(data => {         
                    //grabs the media           
                    this.retrievedMedia = data;
                    //grabs the details each
                    this.mediaDetails = data[0];                    
                })
            .catch(function(error) {
                console.error(error);
            });
        },

        switchActiveMedia(media) {
            console.log(media);

            this.mediaDetails = media;
            //opens the lightbox
            this.$refs.lbox.style.display = "block";
        },

          closebox: function() {
              //closes the lightbox
            this.$refs.lbox.style.display = "none";
          }
        }
}