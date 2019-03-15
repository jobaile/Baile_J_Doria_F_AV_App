export default {
    props: ['currentuser'],

    template: `
<div class="container">

        <!-- Lightbox Starts -->

        <div class="grix-d" id="vidbox" ref="lbox" v-if="activeMediaType == 'tv'">
            
            <!-- Exit button -->
            <button class="close-button" @click="closebox">
                <span>&times;</span>
            </button>    
            <!-- Exit button -->
        
            <div class="lightbox-container">
                <h4 class="media-title">{{currentMediaDetails.tv_title}}</h4>
            </div>

            <div class="video-container">
                <video autoplay controls muted :src="'video/tv/' + currentMediaDetails.tv_trailer"></video>
            </div>

            <div class="media-desc">
                <p v-html="currentMediaDetails.tv_desc"></p>
            </div>
        </div>

        <!-- Lightbox Ends -->

        <!-- Year Starts -->
        <div id="yearlinks">
            <ul v-if="activeMediaType == 'tv'">
                <li>
                    <a href="1950" @click.prevent="loadMedia('1960', 'tv')">1960</a>
                </li>
                <li>
                    <a href="1960" @click.prevent="loadMedia('1970', 'tv')">1970</a>
                </li>
                <li>
                    <a href="1970" @click.prevent="loadMedia('1980', 'tv')">1980</a>
                </li>
                <li>
                    <a href="1980" @click.prevent="loadMedia('1990', 'tv')">1990</a>
                </li>
                <li>
                    <a href="1990" @click.prevent="loadMedia('2000', 'tv')">2000s</a>
                </li>
                <li>
                    <a href="all" @click.prevent="loadMedia(null, 'tv')">All</a>
                </li>
            </ul>
        </div>
        <!-- Year Ends -->

        <!-- Picture Thumbnails-->
        <div id="movieSelect" class="grid-x grid-margin-x">
            <img v-if="activeMediaType == 'tv'" v-for="media in retrievedMedia" :src="'images/tv/' + media.tv_cover" alt="media thumb" @click="switchActiveMedia(media)" class="img-thumbnail rounded float-left media-thumb cell small-6 medium-4 large-3">
        </div>
        <!-- Picture Thumbnails End-->

    </div>
    `,

    data() {
        return {
            activeMediaType: "tv",

            // push first (or random) media object here (selected / filtered on create)
            currentMediaDetails: { 
                source: "greys.mp4",
            },

            retrievedMedia: [],
        }
    },

    created: function() {
        console.log('params:', this.$route.params);

        this.loadMedia(null, "tv");
    },

    methods: {

        loadMedia(filter, mediaType) {
            // set the active media type
            if (this.activeMediaType !== mediaType && mediaType !== null) {
                this.activeMediaType = mediaType;
            }
            // build the url based on any filter we pass in (will need to expand on this for audio)

            let url = (filter == null) ? `./admin/index.php?media=${this.activeMediaType}` : `./admin/index.php?media=${mediaType}&&filter=${filter}`;

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

            //opens the lightbox
            this.$refs.lbox.style.display = "block";
        },

          closebox: function() {
              //closes the lightbox
            this.$refs.lbox.style.display = "none";
        }
    }
}