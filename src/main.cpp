#define SDL_MAIN_HANDLED
#include <SDL2/SDL.h>
#include <iostream>

#define WINDOW_WIDTH 800
#define WINDOW_HEIGHT 600

// #undef main
int main(int argc, char* argv[]) {
    // Initialize SDL
    if (SDL_Init(SDL_INIT_VIDEO) != 0) {
        std::cerr << "SDL_Init Error: " << SDL_GetError() << std::endl;
        return -1;
    }

    // Create an SDL window
    SDL_Window* window = SDL_CreateWindow(
        "Simple SDL2 Window",              // Title of the window
        SDL_WINDOWPOS_CENTERED,            // X position
        SDL_WINDOWPOS_CENTERED,            // Y position
        WINDOW_WIDTH,                      // Width of the window
        WINDOW_HEIGHT,                     // Height of the window
        SDL_WINDOW_SHOWN                   // Flags (default shown)
    );

    if (window == nullptr) {
        std::cerr << "SDL_CreateWindow Error: " << SDL_GetError() << std::endl;
        SDL_Quit();
        return -1;
    }

    // Wait for 5 seconds
    SDL_Delay(5000);

    // Clean up and quit SDL
    SDL_DestroyWindow(window);
    SDL_Quit();

    return 0;
}
