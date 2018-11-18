package vox.engine;

import kha.Image;

/**
 * Inventory Item
 */
class Item {
	private var name:String;
	private var image:Image;

	/**
	 * Constructor.
	 *
	 * @param name 
	 */
	public function new(name:String) {
		this.name = name;
	}
}