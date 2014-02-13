/* LABELS.MSS CONTENTS:
 * - shields
 * - roads
 */

/* ================================================================== */
/* Shields
/* ================================================================== */

#motorway_shield_ngen1[zoom>=11][zoom<=12][reflen<=8],
#motorway_shield_ngen2[zoom>=13][zoom<=14][reflen<=8] {
  shield-name: "[ref]";
  shield-size: 9;
  shield-face-name: @sans_bold;
  shield-fill: #fff;
  shield-file: url(img/shield-motorway-1.png);
  [type='motorway'] {
    [reflen=1] { shield-file: url(img/shield-motorway-1.png); }
    [reflen=2] { shield-file: url(img/shield-motorway-2.png); }
    [reflen=3] { shield-file: url(img/shield-motorway-3.png); }
    [reflen=4] { shield-file: url(img/shield-motorway-4.png); }
    [reflen=5] { shield-file: url(img/shield-motorway-5.png); }
    [reflen=6] { shield-file: url(img/shield-motorway-6.png); }
    [reflen=7] { shield-file: url(img/shield-motorway-7.png); }
    [reflen=8] { shield-file: url(img/shield-motorway-8.png); }
  }
  [type='trunk'] {
    [reflen=1] { shield-file: url(img/shield-trunk-1.png); }
    [reflen=2] { shield-file: url(img/shield-trunk-2.png); }
    [reflen=3] { shield-file: url(img/shield-trunk-3.png); }
    [reflen=4] { shield-file: url(img/shield-trunk-4.png); }
    [reflen=5] { shield-file: url(img/shield-trunk-5.png); }
    [reflen=6] { shield-file: url(img/shield-trunk-6.png); }
    [reflen=7] { shield-file: url(img/shield-trunk-7.png); }
    [reflen=8] { shield-file: url(img/shield-trunk-8.png); }
  }
  [zoom=11] { shield-min-distance: 60; } //50
  [zoom=12] { shield-min-distance: 80; } //60
  [zoom=13] { shield-min-distance: 120; } //120
  [zoom=14] { shield-min-distance: 180; }
}

/* ================================================================== */
/* ROADS
/* ================================================================== */

#motorway_label_ngen1[type='motorway'][zoom>=10][zoom<=12],
#motorway_label_ngen2[type='motorway'][zoom>=13][zoom<=15],
#motorway_label[type='motorway'][zoom>=16],
#motorway_label_ngen1[type='trunk'][zoom>=10][zoom<=12],
#motorway_label_ngen2[type='trunk'][zoom>=13][zoom<=15],
#motorway_label[type='trunk'][zoom>=16] {
  text-name:"[name]";
  text-face-name:@sans_bold;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-clip: false;
  [zoom=10] { text-size: 16; text-min-distance:60; text-spacing: 60; }
  [zoom=11] { text-size: 16; text-min-distance:80; text-spacing: 80; }
  [zoom=12] { text-size: 16; text-min-distance:120; text-spacing: 120; }
  [zoom=13] { text-size: 16; text-min-distance:160; text-spacing: 160; }
  [zoom=14] { text-size: 16; text-min-distance:160; text-spacing: 160; }
  [zoom=15] { text-size: 17; text-min-distance:180; text-spacing: 180; }
  [zoom=16] { text-size: 18; text-min-distance:180; text-spacing: 180; }
  [zoom=17] { text-size: 19; text-min-distance:200; text-spacing: 200; }
  [zoom=18] { text-size: 20; text-min-distance:200; text-spacing: 200; }
}

#mainroad_label_ngen2[type='primary'][zoom>=13][zoom<=15],
#mainroad_label[type='primary'][zoom>=16],
#mainroad_label_ngen2[type='secondary'][zoom>=14][zoom<=15],
#mainroad_label[type='secondary'][zoom>=16],
#mainroad_label_ngen2[type='tertiary'][zoom>=14][zoom<=15],
#mainroad_label[type='tertiary'][zoom>=14] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-clip: false;
  [zoom=13] { text-size: 15; text-min-distance:160; text-spacing: 160; }
  [zoom=14] { text-size: 15; text-min-distance:160; text-spacing: 160; }
  [zoom=15] { text-size: 15; text-min-distance:180; text-spacing: 180; }
  [zoom=16] { text-size: 16; text-min-distance:180; text-spacing: 180; }
  [zoom=17] { text-size: 17; text-min-distance:200; text-spacing: 200; }
  [zoom=18] { text-size: 18; text-min-distance:200; text-spacing: 200; }
}

#minorroad_label_ngen2[zoom=15],
#minorroad_label[zoom>=16] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-clip: false;
  [zoom=15] { text-size: 10; text-min-distance:150; text-spacing: 150; }
  [zoom=16] { text-size: 12; text-min-distance:180; text-spacing: 180; }
  [zoom=17] { text-size: 14; text-min-distance:210; text-spacing: 210; }
  [zoom=18] { text-size: 16; text-min-distance:240; text-spacing: 240; }
}

/* ================================================================== */
/* ONE-WAY ARROWS
/* ================================================================== */

#motorway_label[oneway!=0][zoom>=16],
#mainroad_label[oneway!=0][zoom>=16],
#minorroad_label[oneway!=0][zoom>=16] {
  marker-placement:line;
  marker-max-error: 0.5;
  marker-spacing: 200;
  marker-file: url(img/icon/oneway.svg);
  [oneway=-1] { marker-file: url(img/icon/oneway-reverse.svg); }
  [zoom=16] { marker-transform: "scale(0.5)"; }
  [zoom=17] { marker-transform: "scale(0.75)"; }
}


/* ****************************************************************** */
