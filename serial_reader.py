import serial
import time






def read_serial(port, baud_rate):

    ser = serial.Serial(port,baud_rate,timeout =2)
    ser.flushInput()

    print(f"listening on {port}...")
    while True:
        try: 
            line = ser.readline().decode('utf-8', errors = 'ignore').strip()
        except Exception as e:
            continue
        
        if line.startswith("SIZE:"):
            try:
                image_size = int(line.split(":")[1])
                print(f"Receiving {image_size} bytes...")
                image_data = ser.read(image_size)

                if(len(image_data) == image_size):

                    print(f"downloaded the full image {len(image_data)}")

                    with open("capture.jpg", "wb") as f:
                        f.write(image_data)
                    print("Saved capture.jpg")
                else:
                    print("ERROR, incomplete read")
            except ValueError:
                print("Error Parsing size")

if __name__ == '__main__':

    baud_rate = 115200
    port ="/dev/ttyACM0"

    read_serial(port,baud_rate)


