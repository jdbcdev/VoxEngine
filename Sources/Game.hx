package;

import kha.Framebuffer;
import kha.Scheduler;
import kha.System;
import kha.Assets;

import kha2d.Scene;
import vox.engine.AdventureScene;

/**
 * Game project.
 */
class Game {
	public var character:Character;
	
	public function new() {
		Assets.loadEverything(loadAll);
		System.notifyOnRender(render);
		Scheduler.addTimeTask(update, 0, 1 / 60);
	}
	
	public function loadAll():Void {
		///WE USE SCENE TO ADD INTO THE... WELL... SCENE
		//var bg = Assets.images.port;
		//var tilemap = new Tilemap(bg, 1024, 576, null);
		//Scene.the.addBackgroundTilemap(tilemap, 0);
		character = new Character();
		character.x = 100;
		character.y = 300;
		AdventureScene.the.addBackground(Assets.images.port);
		//AdventureScene.instance.addHero(character);
	}

	public function update():Void {
		///ALSO UPDATING
		AdventureScene.the.update();
	}

	public function render(framebuffer:Framebuffer):Void {		
		var graphics = framebuffer.g2;

		graphics.begin(kha.Color.Black);
		AdventureScene.the.render(graphics);
		graphics.end();
	}
}