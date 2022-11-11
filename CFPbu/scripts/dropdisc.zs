import crafttweaker.event.PlayerDeathDropsEvent;
import crafttweaker.data.IData;
print("Hello world!");
event.items = <items>;
playerToItemName = {
    "shackhorn": {
        item: <musictriggers:blank_record>,
        track: {
            name: "Fox on the Run",
            artist: "Sweet"
        }
    },
} as IData;
var desiredItem = playerToItemName.memberGet(event.player.name) | null; // as IData;
if(desiredItem == null){
    return print("No player found with the name " + event.player.name + " to get a disc from!");
}
desiredItem.item.displayName = desiredItem.track.name + " - " + desiredItem.track.artist; 
event.addItem(desiredItem.item);
event.addItem(desiredItem.item.createEntityItem(event.player.world, event.player.position));