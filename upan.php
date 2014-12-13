<?php
    interface USB{
          function mount();
          function work();
          function unmount();
    }
    
    class Upan implements USB{
    	function mount(){
    		echo "U盘加载成功<br>";
    	}
        function work(){
        	echo "U盘开始工作<br>";
        }
        function unmount(){
        	echo "U盘成功拔出<br>";
        }
    }

    class Computer{
    	function useUSB($usb){
    	   $usb->mount();
    	   $usb->work();
    	   $usb->unmount();
              }
    }

   class Worker{
   	function install(){
   	   $u=new Upan;
   	   $com=new Computer;
   	   $com->useUSB($u);
   	}
   }

   $peo=new Worker;
   $peo->install();
 ?>
   
