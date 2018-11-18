package;

import kha.Assets;
import kha.Framebuffer;
import kha.System;

/**
 * Main class.
 */
class Main {
	static function update(): Void {

	}

	static function render(frames: Array<Framebuffer>): Void {
		
	}

	public static function main() {
		System.start({title: "Game", width: 1024, height: 768}, function (_) {
		new Game();
		});
	}
}
