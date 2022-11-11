import crafttweaker.event.PlayerDeathDropsEvent;
import crafttweaker.data.IData;
print("Hello world!");
event.items = <items>;
playerToItemName = {
    "shackhorn": {
        item: <musictriggers:foxontherun>,
        track: {
            name: "Fox on the Run",
            artist: "Sweet"
        }
    },
    "LeoTheMusicGhost": {
        item: <musictriggers:dracontium>,
        track: {
            name: "Dracontium",
            artist: "Leo the music ghost, Shack!"
        }
    },
    "crackbox1": {
        item: <musictriggers:invisibleman>,
        track: {
            name: "The Invisible Man",
            artist: "Scatman John"
        }
    },
    "PieceofIzu": {
        item: <musictriggers:yousuck>,
        track: {
            name: "You Suck <3 (feat. Akintoye)",
            artist: "Naethan Apollo"
        }
    },
    "__Triple___": {
        item: <musictriggers:bakamitai>,
        track: {
            name: "Baka Mitai (ばかみたい)",
            artist: "Mr. Dame Yakuza"
        }
    },
    "DevvyHex": {
        item: <musictriggers:blackstar>,
        track: {
            name: "Black Star (feat. Ikonoklasm & Hayley)",
            artist: "Starcadian"
        }
    },
    "goobysart": {
        item: <musictriggers:nikes>,
        track: {
            name: "nikes (feat. kid toni)",
            artist: "nimstarr"
        }
    },
    "skaokers": {
        item: <musictriggers:softfuzzyman>,
        track: {
            name: "Soft Fuzzy Man",
            artist: "Lemon Demon"
        }
    }
} as IData;
var desiredItem = playerToItemName.memberGet(event.player.name) | null; // as IData;
if(desiredItem == null){
    return print("No player found with the name " + event.player.name + " to get a disc from!");
}
desiredItem.item.displayName = desiredItem.track.name + " - " + desiredItem.track.artist; 
event.addItem(desiredItem.item);
event.addItem(desiredItem.item.createEntityItem(event.player.world, event.player.position));