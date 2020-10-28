const sensors = require('./sensors') // Essa função faz uma importação das funcões no arquivo sensors.js

class NewArduino {  // O new serial simula uma placa arduino 

    constructor(){
        this.listData = [];
		this.__listDataTemp = [];
		this.listDataHour = [];
    }

    get List() {
        return this.listData;
    }
	
	get ListHour() {
		return this.listDataHour;
	}
    
    SetConnection(){
        setInterval(() => {
            let data_float = sensors.lm35(); // também é possivel utilizar paremetros nessa função para alterar a temperatura minima e a temperatura máxima
            if (this.__listDataTemp.length === 59) { 
                let sum = this.__listDataTemp.reduce((a, b) =>  a + b, 0);
                this.listDataHour.push((sum / this.__listDataTemp.length).toFixed(2));
                while(this.__listDataTemp.length > 0) {
                    this.__listDataTemp.pop();
                }
            }
            
            this.__listDataTemp.push(data_float);
            this.listData.push(data_float);

        }, 100);
    }
}

const serial = new NewArduino();
serial.SetConnection();

module.exports.ArduinoData = {List: serial.List, ListHour:serial.ListHour} // faz uma exportação para o objeto ArduinoData ser acessado no controler.js