export default {
    props: ['currentuser'],

    template: `
    <div class="container">


        <div class="grix-d" id="vidbox" ref="lbox" v-if="activeMediaType == 'music'">

            <!-- Exit button -->
            <button class="close-button" @click="closebox">
                <span>&times;</span>
            </button>    
            <!-- Exit button -->

            <div class="lightbox-container">
                <h4 class="media-title">{{currentMediaDetails.music_title}}</h4>
                <h5>{{currentMediaDetails.music_artist}}</h5>
                <p class="media-desc" v-html="currentMediaDetails.music_runtime"></p>
            </div>

            <div class="audio-container">
                <audio controls :src="'music/' + currentMediaDetails.music_audio"/>
                <img :src="'images/music/' + currentMediaDetails.music_cover" alt="album art"/>
            </div>
        </div>

        <!-- Year Starts -->
        <div id="yearlinks">
            <ul v-if="activeMediaType == 'music'">
                <li>
                    <a href="1950" @click.prevent="loadMedia('1960', 'music')">1960</a>
                </li>
                <li>
                    <a href="1960" @click.prevent="loadMedia('1970', 'music')">1970</a>
                </li>
                <li>
                    <a href="1970" @click.prevent="loadMedia('1980', 'music')">1980</a>
                </li>
                <li>
                    <a href="1980" @click.prevent="loadMedia('1990', 'music')">1990</a>
                </li>
                <li>
                    <a href="1990" @click.prevent="loadMedia('2000', 'music')">2000s</a>
                </li>
                <li>
                    <a href="all" @click.prevent="loadMedia(null, 'music')">All</a>
                </li>
            </ul>
        </div>
        <!-- Year Ends -->

        <!-- Picture Thumbnails-->
            <div id="movieSelect" class="grid-x grid-margin-x">
            <img v-if="activeMediaType == 'music'" v-for="media in retrievedMedia" :src="'images/music/' + media.music_cover" alt="media thumb" @click="switchActiveMedia(media)" class="img-thumbnail rounded float-left media-thumb cell small-6 medium-4 large-3">
            </div>
        <!-- Picture Thumbnails End-->

    </div>
    `,

    data() {
        return {
            // set the default to video -> will get a random video via query on create
            activeMediaType: "music",

            // push first (or random) media object here (selected / filtered on create)
            currentMediaDetails: { 
                source: "allstar.mp3",
            },

            retrievedMedia: [],
        }
    },

    created: function() {
        console.log('params:', this.$route.params);

        this.loadMedia(null, "music");
    },

    methods: {

        loadMedia(filter, mediaType) {

            if (this.activeMediaType !== mediaType && mediaType !== null) {
                this.activeMediaType = mediaType;
            }

            let url = (filter == null) ? `./admin/index.php?media=${this.activeMediaType}` : `./admin/index.php?media=${mediaType}&&filter=${filter}`;

            fetch(url)
                .then(res => res.json())
                .then(data => {  
                    this.retrievedMedia = data;

                    this.currentMediaDetails = data[0] 

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