package vox.engine;

import kha.graphics2.Graphics;

/**
 * Inventory system
 */
class Inventory {
	public var objects:Array<Item>;
	public var selected:Item;

	public function getSelectedItem():Item {
		return this.selected;
	}

	public function setSelectedItem(item:Item) {
		this.selected = item;
	}

	public function render(graphics:Graphics) {

	}
}