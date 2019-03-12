export default {
    props: ['currentuser'],

    template: `
    <section>
        <div v-if="activeMediaType == 'movies'">
            <div class="media-container">
                <h4 class="media-title">{{currentMediaDetails.movies_title}}</h4>
                <p class="media-details" v-html="currentMediaDetails.movies_storyline"></p>
                <span class="media-time">{{currentMediaDetails.movies_runtime}}</span>
                <span class="media-year">Released in {{currentMediaDetails.movies_year}}</span>
            </div>

            <div class="video-container">
                <video autoplay controls :src="'video/' + currentMediaDetails.movies_trailer"></video>
            </div>
        </div>  
        <div>
            <img v-if="activeMediaType == 'video'" v-for="media in retrievedMedia" :src="'images/video' + media.movies_cover" alt="media thumb" @click="switchActiveMedia(media)" class="img-thumbnail rounded float-left media-thumb">
        </div>
    </section>
    `,

    data() {
        return {
            message: "sup",
            // set the default to video -> will get a random video via query on create
            activeMediaType: "movies",

            // push first (or random) media object here (selected / filtered on create)
            currentMediaDetails: { 
                source: "avengers.mp4",
            },

            // could add more media types here in future
            mediaTypes: [
                { iconClass: "fas fa-headphones", description: "audio" },
                { iconClass: "fas fa-film", description: "video" },
                { iconClass: "fas fa-tv", description: "television" }
            ],

            retrievedMedia: [],

            // controls mute / unmute for video element
            vidActive: false
        }
    },

    created: function() {
        console.log('params:', this.$route.params);

        // this.loadMedia(null, "video");
        // loads null on console
    },

    methods: {

        logClicked(e) {
            console.log("trying shorthand click");
            this.vidActive = !this.vidActive;

            let vid = document.querySelector('video');
            vid.muted = !vid.muted;
        },
        
        loadMedia(filter, mediaType) {
            // set the active media type
            if (this.activeMediaType !== mediaType && mediaType !== null) {
                this.activeMediaType = mediaType;
            }
            // build the url based on any filter we pass in (will need to expand on this for audio)

            let url = (filter == null) ? `./admin/index.php?media=${this.activeMediaType}` : `./admin/index.php?media=${this.mediaType}&&filter=${filter}`;

            fetch(url)
                .then(res => res.json())
                .then(data => {                    
                    // we're gettin them all, dump it all in the media container
                    this.retrievedMedia = data;
                    // grab the first one in the list and make it active
                    this.currentMediaDetails = data[0];                    
                })
            .catch(function(error) {
                console.error(error);
            });
        },

        switchActiveMedia(media) {
            console.log(media);

            this.currentMediaDetails = media;
        }
    }
}