import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerDeathDropsEvent;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
print("Hello world!");
events.onPlayerDeathDrops(function(event as crafttweaker.event.PlayerDeathDropsEvent){


var playerToItemName = {
    "shackhorn": {
        item: <musictriggers:foxontherun:0> as crafttweaker.item.IItemStack,
        track: {
            name: "Fox on the Run",
            artist: "Sweet"
        }
    },
    "LeoTheMusicGhost": {
        item: <musictriggers:dracontium:0> as crafttweaker.item.IItemStack,
        track: {
            name: "Dracontium",
            artist: "Leo the music ghost, Shack!"
        }
    },
    "crackbox1": {
        item: <musictriggers:invisibleman:0> as crafttweaker.item.IItemStack,
        track: {
            name: "The Invisible Man",
            artist: "Scatman John"
        }
    },
    "PieceofIzu": {
        item: <musictriggers:yousuck:0> as crafttweaker.item.IItemStack,
        track: {
            name: "You Suck <3 (feat. Akintoye)",
            artist: "Naethan Apollo"
        }
    },
    "__Triple___": {
        item: <musictriggers:bakamitai:0> as crafttweaker.item.IItemStack,
        track: {
            name: "Baka Mitai (ばかみたい)",
            artist: "Mr. Dame Yakuza"
        }
    },
    "DevvyHex": {
        item: <musictriggers:blackstar:0> as crafttweaker.item.IItemStack,
        track: {
            name: "Black Star (feat. Ikonoklasm & Hayley)",
            artist: "Starcadian"
        }
    },
    "goobysart": {
        item: <musictriggers:nikes:0> as crafttweaker.item.IItemStack,
        track: {
            name: "nikes (feat. kid toni)",
            artist: "nimstarr"
        }
    },
    "skaokers": {
        item: <musictriggers:softfuzzyman:0> as crafttweaker.item.IItemStack,
        track: {
            name: "Soft Fuzzy Man",
            artist: "Lemon Demon"
        }
    }
};
var desiredItem = playerToItemName.memberGet(event.player.name); // as IData;
if(isNull(desiredItem)){
    return print("No player found with the name " + event.player.name + " to get a disc from!");
}
desiredItem.item.displayName = desiredItem.track.name + " - " + desiredItem.track.artist; 

event.addItem(desiredItem.item as crafttweaker.item.IItemStack);
// event.addItem(desiredItem.item.createEntityItem(event.player.world, event.player.position));
});