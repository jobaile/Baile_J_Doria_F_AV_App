export default {
  template: `
  <footer>
    <div id="footertop">
    <div class="footerlogo"><img src="images/logo-white.png" alt="footer logo"></div>
    <div class="footersocial">
    <a href="#"><img src="images/facebook.png" alt="facebook icon"></a>
    <a href="#"><img src="images/twitter.png" alt="twitter icon"></a>
    <a href="#"><img src="images/instagram.png" alt="instagram icon"></div></a>
    </div>
    <div class="footerlinks">
        <ul>
        <li><a href="#">BACK TO TOP</a></li>
        <li><a href="#">TERMS OF USE</a></li>
        <li><a href="#">PRIVACY POLICY</a></li>
        <li><a href="#">CONTACT US</a></li>
        </ul>
    </div>
  </footer>
  `,

  data() {
    return{
        socialIcons: [
            { iconClass: "fas fa-facebook-f", description: "facebook", link: "https://facebook.com" },
            { iconClass: "fas fa-twitter", description: "twitter", link: "https://twitter.com"},
            { iconClass: "fas fa-instagram", description: "instagram", link: "https://instagram.com"}
        ],
    }
  }
}
