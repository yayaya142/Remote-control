import pyautogui


def findCoordinates():
    x, y = pyautogui.position()
    print(f'X: {x}, Y: {y}')


findCoordinates()