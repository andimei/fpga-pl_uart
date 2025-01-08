#include <stdint.h>
#include <stdio.h>
#include <sys/unistd.h>
#include <xparameters_ps.h>
#include <xstatus.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_io.h"
#include "unistd.h"

#include "xuartps.h"

// Alamat register
#define ADDR_REG0 0x00 // Uart divider [10:0]
#define ADDR_REG1 0x04 // Uart Tx Data [7:0]
#define ADDR_REG2 0x08 // Uart Rx Data [7:0]
#define ADDR_REG3 0x0C // Uart Flag [2:0] (bit 1 = Rx Buffer Empty, Bit 0 = Tx Buffer Full)

// Fungsi untuk mengatur baudrate
uint8_t uartpl_setBaudrate(uint32_t baudrate){
    u32 divisor = 50000000/baudrate;
    /**
    * Set divider baudrate
    * Freq. Clock (modul uart) = 50MHz
    * Desired Baudrate = 115200
    * Divider = 50000000/115200
    * Divider = 434
    */
    Xil_Out32(XPAR_AXI_LITE_SLAVE_0_BASEADDR + ADDR_REG0, divisor);
}

// Fungsi untuk mengecek ketersediaan data di FIFO RX
uint8_t uartpl_available() {
    uint32_t uartpl_status = Xil_In32(XPAR_AXI_LITE_SLAVE_0_BASEADDR + ADDR_REG3);
    return (uartpl_status & 0x02) == 0 ? 1 : 0; // Jika bit 2 (RxEmpty) == 0, data tersedia
}

// Fungsi untuk membaca data dari FIFO RX
uint8_t uartpl_read() {
    return (uint8_t)(Xil_In32(XPAR_AXI_LITE_SLAVE_0_BASEADDR + ADDR_REG2) & 0xFF); // Ambil byte data (bit 7:0)
}

// Fungsi untuk menulis data ke FIFO TX
void uartpl_sendMessage(const char *msg) {
    while (*msg != '\0') { // Iterasi hingga akhir string
        Xil_Out32(XPAR_AXI_LITE_SLAVE_0_BASEADDR + ADDR_REG1, *msg); // Kirim satu byte
        msg++; // Lanjut ke byte berikutnya
    }
}


int main(){
    init_platform();
    print("init system\n");
    sleep(1);
    uartpl_setBaudrate(256000);
    sleep(1);


    char *msg = "Teks ini dirancang untuk memenuhi panjang 512 karakter. Dalam dunia digital, kejelasan dan efisiensi menjadi sangat penting. Setiap kata harus memberikan makna, tanpa ruang untuk hal-hal yang tidak relevan. Menggabungkan elemen seperti teknologi, kreativitas, dan inovasi adalah cara terbaik untuk menciptakan sesuatu yang berharga. Panjang teks ini memastikan konten tetap padat dan informatif, memberikan nilai bagi siapa saja yang membacanya. Fokus, ketelitian, dan keseimbangan adalah kunci utama lo iki josss\n";
   
    while(1){
        uartpl_sendMessage(msg);
        for(uint8_t i=0; i<2; i++){
            printf("hello : %d \n", i);
            sleep(1);
        }

        while(uartpl_available()){
            u8 inByte = uartpl_read();
            printf("%c", inByte);
        }
    }

    cleanup_platform();
    return 0;

}