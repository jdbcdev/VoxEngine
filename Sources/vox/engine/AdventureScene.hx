package vox.engine;

import kha.Image;
import kha.graphics2.Graphics;
import kha2d.Sprite;
import kha.Assets;

/**
 * Adventure Scene.
 * 
 */
class AdventureScene {
	
	private static var instance:AdventureScene;
	private var sprites:Array<Sprite>;
	private var background:Image;

	/**
	 * Constructor.
	 */
	public function new() {
		sprites = new Array<Sprite>();
	}

	/**
	 * Singleton instance.
	 */
	public static var the(get, null): AdventureScene;
	
	private static function get_the(): AdventureScene {
		if (instance == null) instance = new AdventureScene();
		return instance;
	}

	/**
	 * Add background image.
	 *
	 * @param image 
	 */
	public function addBackground(image:Image) {
		background = image;
	}

	public function update() {
		
	}

	/**
	 * Render scene.
	 *
	 * @param graphics 
	 */
	public function render(graphics:Graphics) {
		graphics.drawImage(background, 0, 0);
	}
}