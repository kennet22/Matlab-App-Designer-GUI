classdef PL3GUI_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                     matlab.ui.Figure
        TabGroup                     matlab.ui.container.TabGroup
        SolarFarmTab                 matlab.ui.container.Tab
        PowerSwitchLabel             matlab.ui.control.Label
        solarFarmSwitch              matlab.ui.control.ToggleSwitch
        SolarFarmDetailsLabel        matlab.ui.control.Label
        solarFarmCurrent             matlab.ui.control.NumericEditField
        VoltageVEditField_7Label     matlab.ui.control.Label
        solarFarmVoltage             matlab.ui.control.NumericEditField
        PowerWEditField_7Label       matlab.ui.control.Label
        solarFarmPower               matlab.ui.control.NumericEditField
        CurrentmAEditField_2Label_2  matlab.ui.control.Label
        VoltageGaugeLabel            matlab.ui.control.Label
        VoltageGauge                 matlab.ui.control.Gauge
        CurrentGaugeLabel            matlab.ui.control.Label
        CurrentGauge                 matlab.ui.control.Gauge
        PowerGaugeLabel              matlab.ui.control.Label
        PowerGauge                   matlab.ui.control.Gauge
        UIAxes                       matlab.ui.control.UIAxes
        solarFarmVGraphButton        matlab.ui.control.Button
        solarFarmCGraphButton        matlab.ui.control.Button
        BatteryOutputTab             matlab.ui.container.Tab
        BatteryDetailsLabel          matlab.ui.control.Label
        PowerSwitch_2Label           matlab.ui.control.Label
        batterySwitch                matlab.ui.control.ToggleSwitch
        BatteryPercentLabel          matlab.ui.control.Label
        batteryPercent               matlab.ui.control.NumericEditField
        VoltageVEditField_8Label     matlab.ui.control.Label
        batteryVoltage               matlab.ui.control.NumericEditField
        BatteryChargeGaugeLabel      matlab.ui.control.Label
        BatteryChargeGauge           matlab.ui.control.SemicircularGauge
        VoltageGauge_2Label          matlab.ui.control.Label
        batteryVGauge                matlab.ui.control.Gauge
        batteryVGraphButton          matlab.ui.control.Button
        loadTwo                      matlab.ui.container.Tab
        loadTwoPowerGraph            matlab.ui.control.UIAxes
        VDCLoadLabel_2               matlab.ui.control.Label
        PowerSwitch_6Label           matlab.ui.control.Label
        loadTwoSwitch                matlab.ui.control.ToggleSwitch
        VoltageVEditField_6Label     matlab.ui.control.Label
        loadTwoVoltage               matlab.ui.control.NumericEditField
        CurrentmAEditField_6Label    matlab.ui.control.Label
        loadTwoCurrent               matlab.ui.control.NumericEditField
        PowerWEditField_6Label       matlab.ui.control.Label
        loadTwoPower                 matlab.ui.control.NumericEditField
        ResistanceLabel_3            matlab.ui.control.Label
        loadTwoResistance            matlab.ui.control.NumericEditField
        VoltageGauge_3Label_2        matlab.ui.control.Label
        loadTwoVGauge                matlab.ui.control.Gauge
        CurrentGauge_3Label_2        matlab.ui.control.Label
        loadTwoCGauge                matlab.ui.control.Gauge
        PowerGauge_3Label_2          matlab.ui.control.Label
        loadTwoPowerGauge            matlab.ui.control.Gauge
        loadTwoVGraphButton          matlab.ui.control.Button
        loadTwoCGraphButton          matlab.ui.control.Button
        loadThree                    matlab.ui.container.Tab
        loadThreePowerGraph          matlab.ui.control.UIAxes
        VDCLoadLabel_3               matlab.ui.control.Label
        PowerSwitch_5Label           matlab.ui.control.Label
        loadThreeSwitch              matlab.ui.control.ToggleSwitch
        VoltageVEditField_5Label     matlab.ui.control.Label
        loadThreeVoltage             matlab.ui.control.NumericEditField
        CurrentmAEditField_5Label    matlab.ui.control.Label
        loadThreeCurrent             matlab.ui.control.NumericEditField
        PowerWEditField_5Label       matlab.ui.control.Label
        loadThreePower               matlab.ui.control.NumericEditField
        ResistanceLabel_4            matlab.ui.control.Label
        loadThreeResistance          matlab.ui.control.NumericEditField
        VoltageGauge_3Label_3        matlab.ui.control.Label
        loadThreeVGauge              matlab.ui.control.Gauge
        CurrentGauge_3Label_3        matlab.ui.control.Label
        loadThreeCGauge              matlab.ui.control.Gauge
        PowerGauge_3Label_3          matlab.ui.control.Label
        loadThreePowerGauge          matlab.ui.control.Gauge
        loadThreeVGraphButton        matlab.ui.control.Button
        loadThreeCGraphButton        matlab.ui.control.Button
        MicrogridStatusPanel         matlab.ui.container.Panel
        SolarFarmLampLabel           matlab.ui.control.Label
        SolarFarmLamp                matlab.ui.control.Lamp
        BatteryLampLabel             matlab.ui.control.Label
        BatteryLamp                  matlab.ui.control.Lamp
        VDCLoadLamp_2Label           matlab.ui.control.Label
        loadThreeStatus              matlab.ui.control.Lamp
        VDCLoadLabel                 matlab.ui.control.Label
        loadTwoStatus                matlab.ui.control.Lamp
        SystemPowerSwitchLabel       matlab.ui.control.Label
        SystemPowerSwitch            matlab.ui.control.Switch
        BluetoothStatusPanel         matlab.ui.container.Panel
        ConnectionLampLabel          matlab.ui.control.Label
        ConnectionLamp               matlab.ui.control.Lamp
        DisconnectButton             matlab.ui.control.Button
        RemoteIDLabel                matlab.ui.control.Label
        MicrogridbyLabel             matlab.ui.control.Label
        JordanMorrisLabel            matlab.ui.control.Label
        EskindirAbebeLabel           matlab.ui.control.Label
        BradenLeeLabel               matlab.ui.control.Label
        KennetThurmanLabel           matlab.ui.control.Label
        BTIDLabel                    matlab.ui.control.Label
        ConnectButton                matlab.ui.control.Button
        ProjectLab3Label             matlab.ui.control.Label
    end

    
    properties (Access = public)
        i = 0;
        t;
        Bt;
        count = 0;
        oneSecondCounter = 0;
        selectedTab;
        validData = 1;
        voltage = 0;
        current = 0;
        currentFigure;
        voltageFigure;
        figure;
        
        oneS;
        twoS;
        threeS;
        batteryS;
        solarFarmS;
        
        oneT;
        twoT;
        threeT;
        batteryT;
        solarFarmT = 1;
        %         SFV;
        %         SFA;
        %         SFP;
        %
        %         BV;
        %
        %         oneV;
        %         oneA;
        %         oneP;
        %
        %         twoV;
        %         twoA;
        %         twoP;
        %
        %         threeV;
        %         threeA;
        %         threeP;
    end
    
    methods (Access = private)
        
        function bluetoothSetup(app)
            
            % Create bluetooth object
            app.Bt = Bluetooth('btspp://000666EBE248', 1);
            % Open Bluetooth connection
            fopen(app.Bt);
            % Set terminator character
            set(app.Bt, 'Terminator', 'E');
            % Indicate the program starts on the Solar Panel Tab
            fwrite(app.Bt, '1');
            
            app.ConnectionLamp.Color = 'green';
            app.BTIDLabel.Text = get(app.Bt, 'RemoteID');
            app.BTIDLabel.Visible = 'on';
            %app.selectedTab = app.TabGroup.SelectedTab;
        end
        
        
        
        function startSystem(app)
            
            app.solarFarmSwitch.Value = 'On';
            app.SolarFarmLamp.Color = 'green';
            app.solarFarmS = 1;
            
            app.batterySwitch.Value = 'On';
            app.BatteryLamp.Color = 'green';
            app.batteryS = 1;
            
            app.loadThreeSwitch.Value = 'On';
            app.loadTwoStatus.Color = 'green';
            app.threeS = 1;
            
            app.loadTwoSwitch.Value = 'On';
            app.loadThreeStatus.Color = 'green';
            app.twoS = 1;
            
            readData(app);
        end
        
        
        function stopSystem(app)
            
            app.solarFarmSwitch.Value = 'Off';
            app.SolarFarmLamp.Color = 'red';
            app.solarFarmS = 0;
            
            app.batterySwitch.Value = 'Off';
            app.BatteryLamp.Color = 'red';
            app.batteryS = 0;
            
            app.loadTwoSwitch.Value = 'Off';
            app.loadThreeStatus.Color = 'red';
            app.twoS = 0;
            
            app.loadThreeSwitch.Value = 'Off';
            app.loadTwoStatus.Color = 'red';
            app.threeS = 0;
            
            fwrite(app.Bt, '0');
        end
        
        function [SFV, SFA, SFP, BV, BC, twoV, twoP, twoA, threeV, threeP, threeA] = ADC(app, SFV, SFA, BV, twoV, threeV)
            % Perfrom all ADC calculations
            
            SFV = ((23*SFV)/3290);
            SFA = (((3.3)/4096)*SFA)/0.05;
            SFP = SFV*SFA;
            
            BV = ((3.3)/4096)*BV;
            BC = ((BV*100)/3240);
            
            twoV = (((3.3)/4096)*twoV);
            twoP = ((twoV*twoV)/app.loadTwoResistance.Value);
            twoA = (twoP/twoV);
            
            threeV = (((3.3)/4096)*threeV);
            threeP = ((threeV*threeV)/app.loadThreeResistance.Value);
            threeA = (threeP/threeV);
            
        end
        
        
        
        function readData(app)
            disp("Read Data");
            app.validData = 1;
            
            while(app.validData)
                % Request data from MCU
                fwrite(app.Bt, '9');
                % Get line of data received via Bluetooth
                try
                data = fgetl(app.Bt);
                catch
                    disp("Error getting data");
                end
                app.selectedTab = app.TabGroup.SelectedTab;
                % If the data contains a ',' - Parse
                if (contains(data, ','))
                    [SFV,SFA,BV,twoV,threeV] = parseData(app, data);
                    [SFV, SFA, SFP, BV, BC, twoV, twoP, twoA, threeV, threeP, threeA] = ADC(app, SFV, SFA, BV, twoV, threeV);
                    assignData(app, SFV, SFA, SFP, BV, BC, twoV, twoA, twoP, threeV, threeA, threeP);
                elseif (data == "10")
                    app.solarFarmS = 0;
                    app.solarFarmSwitch.Value = 'Off';
                    app.SolarFarmLamp.Color = 'red';
                elseif (data =="20")
                    app.batteryS = 0;
                    app.batterySwitch.Value = 'Off';
                    app.batteryLamp.Color ='red';
                elseif (data == "40")
                    app.twoS = 0;
                    
                elseif (data == "50")
                    app.threeS = 0;
                    
                else
                    disp('Data Error');
                    disp(data);
                    app.validData = 0;
                end
            end
        end
        
        function assignData(app, SFV, SFA, SFP, BV, BC, twoV, twoA, twoP, threeV, threeA, threeP)

            app.count = app.count + 1;
            
            if (mod(app.count, 1) == 0)
                app.oneSecondCounter = app.oneSecondCounter + 1;
                
                if (app.oneSecondCounter > 60)
                    app.oneSecondCounter = 0;
                end
            end
            
            if (isequal(app.solarFarmT, 1) && isequal(app.solarFarmS, 1))       % Solar Farm
                % Solar Panel data assignment
                
                
                % Detect if voltage or current has fallen below operating values
                if (SFV > 23)
                    app.solarFarmS = 0;
                    app.solarFarmSwitch.Value = 'Off';
                    app.SolarFarmLamp.Color = 'red';
                
                elseif (SFA > 1.67)
                    app.solarFarmS = 0;
                    app.solarFarmSwitch.Value = 'Off';
                    app.SolarFarmLamp.Color = 'red';
                else
                    app.solarFarmVoltage.Value = SFV;
                    app.VoltageGauge.Value = SFV;
                    
                    app.CurrentGauge.Value = SFA;
                    app.solarFarmCurrent.Value = SFA;
                    
                    app.solarFarmPower.Value = SFP;
                    app.PowerGauge.Value = SFP;
                    
                    powerGraph(app, app.UIAxes, SFP);
                end
                
            elseif (isequal(app.batteryT, 1) && isequal(app.batteryS, 1))    % Battery
                % Battery data assignment
                pause(0.25);

                disp("assigning battery data");
                
                app.batteryVoltage.Value = BV;
                app.batteryVGauge.Value = BV;
                
                app.BatteryChargeGauge.Value = BC;
                app.batteryPercent.Value = BC;
                
            elseif (isequal(app.twoT, 1)&& isequal(app.twoS, 1))    % Battery
                % 12V AC Load data assignment
                
                if (twoA > 1 || twoV > 7)
                    app.twoS = 0;
                    app.loadTwoSwitch.Value = 'Off';
                    app.loadTwoStatus.Color = 'red';
                else
                    app.loadTwoCurrent.Value = twoA;
                    app.loadTwoCGauge.Value = twoA;
                    
                    app.loadTwoVoltage.Value = twoV;
                    app.loadTwoVGauge.Value = twoV;
                    
                    app.loadTwoPower.Value = twoP;
                    app.loadTwoPowerGauge.Value = twoP;
                    
                    powerGraph(app, app.loadTwoPowerGraph, twoP);
                end

            elseif (isequal(app.threeT, 1) && isequal(app.threeS, 1))    % Battery
                % 24V DC Load data assignment

                if (threeA > 1 || threeV > 14)
                    app.threeS = 0;
                    app.loadThreeSwitch = 'Off';
                    app.loadThreeStatus.Color = 'red';
                else
                    app.loadThreeCurrent.Value = threeA;
                    app.loadThreeCGauge.Value = threeA;
                    
                    app.loadThreeVoltage.Value = threeV;
                    app.loadThreeVGauge.Value = threeV;
                    
                    app.loadThreePower.Value = threeP;
                    app.loadThreePowerGauge.Value = threeP;
                    
                    powerGraph(app, app.loadThreePowerGraph, threeP);
                end
            else
                disp("No active tab or on switch. Stopping data stream...");
                app.validData = 0;
            end
            
        end
              
        function powerGraph(app, axes, y)
            
            axes.XLim = [0,60];
            axes.XTickMode = 'manual';
            axes.XLimMode = 'manual';
            
            hold(axes, 'on');
            
            if (app.oneSecondCounter >= 60)
                axes.cla;
                hold(axes, 'off');
            end
            try
                plot(axes, app.oneSecondCounter, y, 'bo')
                drawnow
            catch
                disp("Power graph error catch");
            end
        end
        
        function graph(app, axes, y)
            
            try
                plot(axes, app.oneSecondCounter, y, 'bo');
                drawnow
                
                if (app.oneSecondCounter >= 60)
                axes.cla;
                end
            catch
            end
            
            
        end
        
        function [SFV,SFA,BV,twoV,threeV] = parseData(~, data)
            
            split = strsplit(data, ',');
            
            SFV = str2double(split{1});     % 1
            
            SFA = str2double(split{2});      % 2
            
            BV = str2double(split{3});      % 3
            
            twoV = str2double(split{4});      % 5
            
            threeV = str2double(split{5});    % 6
            
        end
        
    end
    
    
    methods (Access = public)
        
    end
    

    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            
        end

        % Value changed function: SystemPowerSwitch
        function SystemPowerSwitchValueChanged(app, event)
            value = app.SystemPowerSwitch.Value;
            
            if (strcmpi(value,'On'))
                startSystem(app);
            else
                stopSystem(app);
            end
        end

        % Button pushed function: DisconnectButton
        function DisconnectButtonPushed(app, event)
            app.Bt = Bluetooth('btspp://000666EBE248', 1);
            fclose(app.Bt);
            delete(app.Bt);
            clear Bt;
            app.ConnectionLamp.Color = 'red';
        end

        % Button pushed function: ConnectButton
        function ConnectButtonPushed(app, event)
            bluetoothSetup(app);
            readData(app);
        end

        % Value changed function: solarFarmSwitch
        function solarFarmSwitchValueChanged(app, event)
            
            value = app.solarFarmSwitch.Value;  % Solar Panel Status
            app.solarFarmSwitch.Interruptible = 'on';
            
            if (strcmpi(value,'On') && strcmpi(app.SystemPowerSwitch.Value, 'On'))
                app.SolarFarmLamp.Color = 'green';
                fwrite(app.Bt, "11");
                app.solarFarmS = 1;
                readData(app);
            else
                app.SolarFarmLamp.Color = 'red';
                fwrite(app.Bt, "10");
                app.solarFarmS = 0;
                app.solarFarmPower.Value = 0;
                app.solarFarmVoltage.Value = 0;
                app.solarFarmCurrent.Value = 0;
                app.VoltageGauge.Value = 0;
                app.CurrentGauge.Value = 0;
                app.PowerGauge.Value = 0;
                readData(app);
            end
        end

        % Value changed function: batterySwitch
        function batterySwitchValueChanged(app, event)
            value = app.batterySwitch.Value;
            disp("in battery tab");
                if (strcmpi(value,'On') && strcmpi(app.SystemPowerSwitch.Value, 'On'))
                    app.BatteryLamp.Color = 'green';
                    fwrite(app.Bt, "21");
                    app.batteryS = 1;
                    disp("battery tab on");
                    readData(app);
                    
                else
                    app.BatteryLamp.Color = 'red';
                    fwrite(app.Bt, "20");
                    app.batteryS = 0;
                    disp("battery tab off");
                    readData(app);
                end
        end

        % Value changed function: loadThreeSwitch
        function loadThreeSwitchValueChanged(app, event)
            value = app.loadThreeSwitch.Value;
            if (strcmpi(value,'On'))
                if (strcmpi(app.SystemPowerSwitch.Value, 'On'))
                    app.loadThreeStatus.Color = 'green';
                    fwrite(app.Bt, "51");
                    app.threeS = 1;
                    readData(app);
                end
            else
                app.loadThreeStatus.Color = 'red';
                fwrite(app.Bt, "50");
                app.threeS = 0;
                app.loadThreeVoltage.Value = 0;
                app.loadThreeCurrent.Value = 0;
                app.loadThreePower.Value = 0;
                app.loadThreeVGauge.Value = 0;
                app.loadThreeCGauge.Value = 0;
                app.loadThreePowerGauge.Value = 0;
                
                readData(app);
            end
        end

        % Value changed function: loadTwoSwitch
        function loadTwoSwitchValueChanged(app, event)
            value = app.loadTwoSwitch.Value;
            if (strcmpi(value,'On'))
                if (strcmpi(app.SystemPowerSwitch.Value, 'On'))
                    app.loadTwoStatus.Color = 'green';
                    fwrite(app.Bt, "41");
                    app.twoS = 1;
                    readData(app);
                end
            else
                app.loadTwoStatus.Color = 'red';
                fwrite(app.Bt, "40");
                app.twoS = 0;
                app.loadTwoPower.Value = 0;
                app.loadTwoVoltage.Value = 0;
                app.loadTwoCurrent.Value = 0;
                app.loadTwoVGauge.Value = 0;
                app.loadTwoCGauge.Value = 0;
                app.loadTwoPowerGauge.Value = 0;
                readData(app);
            end
        end

        % Button pushed function: solarFarmVGraphButton
        function solarFarmVGraphButtonPushed(app, event)
            
            if (ishandle(app.currentFigure))
                close(app.currentFigure);
            end
            
            app.voltageFigure = uifigure;
            ax = uiaxes(app.voltageFigure);
            
            ax.Title.String = 'Solar Farm Voltage';
            ax.Title.FontWeight = 'normal';
            ax.XLabel.String = "Time (sec)";
            ax.YLabel.String = "Voltage (V)";
            ax.XLabel.FontSize = 12;
            ax.YLabel.FontSize = 12;
            ax.XLim = [0 60];
            ax.YLim = [0 25];
            ax.XTickMode = 'manual';
            ax.XLimMode = 'manual';
            ax.XTick = 0:15:60;
            
            while (ishandle(app.voltageFigure))
                hold(ax, 'on');
                fwrite(app.Bt, "9");
                data = fgetl(app.Bt);
                [SFV,SFA,BV,twoV,threeV] = parseData(app, data);
                    [SFV, SFA, SFP, BV, BC, twoV, twoP, twoA, threeV, threeP, threeA] = ADC(app, SFV, SFA, BV, twoV, threeV);
                    assignData(app, SFV, SFA, SFP, BV, BC, twoV, twoA, twoP, threeV, threeA, threeP);
                
                try
                    plot(ax, app.oneSecondCounter, app.solarFarmVoltage.Value, 'bo');
                    drawnow
                catch
                    disp("SF Graph Error");
                end
                
                
                if (app.oneSecondCounter >= 60)
                    ax.cla;
                    hold(ax, 'off');
                    app.oneSecondCounter = 0;
                end
            end
        end

        % Button pushed function: solarFarmCGraphButton
        function solarFarmCGraphButtonPushed(app, event)
            if (ishandle(app.voltageFigure))
                close(app.voltageFigure);
            end
            
            app.currentFigure = uifigure;
            ax1 = uiaxes(app.currentFigure);
            ax1.Title.String = 'Solar Farm Current';
            ax1.Title.FontWeight = 'normal';
            ax1.XLabel.String = "Time (sec)";
            ax1.YLabel.String = "Current (mA)";
            ax1.XLabel.FontSize = 12;
            ax1.YLabel.FontSize = 12;
            ax1.XLim = [0 60];
            ax1.YLim = [0 200];
            ax1.XTickMode = 'manual';
            ax1.XLimMode = 'manual';
            ax1.XTick = 0:15:60;
            hold(ax1, 'on');
            while (ishandle(app.currentFigure))
                
                fwrite(app.Bt, "9");
                data = fgetl(app.Bt);
                [SFV,SFA,BV,twoV,threeV] = parseData(app, data);
                    [SFV, SFA, SFP, BV, BC, twoV, twoP, twoA, threeV, threeP, threeA] = ADC(app, SFV, SFA, BV, twoV, threeV);
                    assignData(app, SFV, SFA, SFP, BV, BC, twoV, twoA, twoP, threeV, threeA, threeP);
                
                try
                    
                    plot(ax1, app.oneSecondCounter, app.solarFarmCurrent.Value, 'bo');
                    drawnow
                catch
                end
                
                if (app.oneSecondCounter >= 60)
                    ax1.cla;
                    hold(ax1, 'off');
                    app.oneSecondCounter = 0;
                end
            end
        end

        % Button pushed function: batteryVGraphButton
        function batteryVGraphButtonPushed(app, event)
            
            if (ishandle(app.currentFigure))
                close(app.currentFigure);
            end
            
            if (ishandle(app.voltageFigure))
                close(app.voltageFigure);
            end
            
            app.voltageFigure = uifigure;
            ax1 = uiaxes(app.voltageFigure);
            ax1.Title.String = 'Battery Voltage';
            ax1.Title.FontWeight = 'normal';
            ax1.XLabel.String = "Time (sec)";
            ax1.YLabel.String = "Voltage (V)";
            ax1.XLabel.FontSize = 12;
            ax1.YLabel.FontSize = 12;
            ax1.XLim = [0 60];
            ax1.YLim = [0 20];
            ax1.XTickMode = 'manual';
            ax1.XLimMode = 'manual';
            ax1.XTick = 0:15:60;
            hold(ax1, 'on');
            
            while (ishandle(app.voltageFigure))
                
                fwrite(app.Bt, "9");
                data = fgetl(app.Bt);
                [SFV,SFA,BV,twoV,threeV] = parseData(app, data);
                    [SFV, SFA, SFP, BV, BC, twoV, twoP, twoA, threeV, threeP, threeA] = ADC(app, SFV, SFA, BV, twoV, threeV);
                    assignData(app, SFV, SFA, SFP, BV, BC, twoV, twoA, twoP, threeV, threeA, threeP);
                graph(app, ax1, app.batteryVoltage.Value);
                
            end
            
        end

        % Callback function
        function batteryCGraphButtonPushed(app, event)
            if (ishandle(app.currentFigure))
                close(app.currentFigure);
            end
            
            if (ishandle(app.voltageFigure))
                close(app.voltageFigure);
            end
            app.currentFigure = uifigure;
            ax1 = uiaxes(app.currentFigure);
            ax1.Title.String = 'Battery Current';
            ax1.Title.FontWeight = 'normal';
            ax1.XLabel.String = "Time (sec)";
            ax1.YLabel.String = "Current (mA)";
            ax1.XLabel.FontSize = 12;
            ax1.YLabel.FontSize = 12;
            ax1.XLim = [0 60];
            ax1.YLim = [0 7];
            ax1.XTickMode = 'manual';
            ax1.XLimMode = 'manual';
            ax1.XTick = 0:15:60;
            hold(ax1, 'on');
            
            while (ishandle(app.currentFigure))
                
                fwrite(app.Bt, "9");
                data = fgetl(app.Bt);
               [SFV,SFA,BV,twoV,threeV] = parseData(app, data);
                    [SFV, SFA, SFP, BV, BC, twoV, twoP, twoA, threeV, threeP, threeA] = ADC(app, SFV, SFA, BV, twoV, threeV);
                    assignData(app, SFV, SFA, SFP, BV, BC, twoV, twoA, twoP, threeV, threeA, threeP);
                
                graph(app, ax1, app.batteryPercent.Value);
                
            end
        end

        % Selection change function: TabGroup
        function TabGroupSelectionChanged(app, event)
            if (ishandle(app.currentFigure))
                close(app.currentFigure);
            end
            
            if (ishandle(app.voltageFigure))
                close(app.voltageFigure);
            end
            
            hold(app.UIAxes, 'off');
            hold(app.loadTwoPowerGraph, 'off');
            hold(app.loadThreePowerGraph, 'off');
            
            app.UIAxes.cla;
            app.loadTwoPowerGraph.cla;
            app.loadThreePowerGraph.cla;
            
            disp("Changing tabs");
            app.selectedTab = app.TabGroup.SelectedTab;
            app.validData = 0;
            
            if (app.selectedTab == app.SolarFarmTab)
                app.solarFarmT = 1;
            else
                app.solarFarmT = 0;
            end
            
            if (app.selectedTab == app.BatteryOutputTab)
                app.batteryT = 1;
                disp("battery tab selected");
            else
                app.batteryT = 0;
            end
            
            if (app.selectedTab == app.loadTwo)
                app.twoT = 1;
            else
                app.twoT = 0;
            end
            
            if (app.selectedTab == app.loadThree)
                app.threeT = 1;
            else
                app.threeT = 0;
            end
            
            readData(app);
        end

        % Button pushed function: loadTwoVGraphButton
        function loadTwoVGraphButtonPushed(app, event)
            if (ishandle(app.currentFigure))
                close(app.currentFigure);
            end
            
            if (ishandle(app.voltageFigure))
                close(app.voltageFigure);
            end
            
            app.currentFigure = uifigure;
            ax1 = uiaxes(app.currentFigure);
            ax1.Title.String = 'DC Load Voltage Graph';
            ax1.Title.FontWeight = 'normal';
            ax1.XLabel.String = "Time (sec)";
            ax1.YLabel.String = "Voltage (V)";
            ax1.XLabel.FontSize = 12;
            ax1.YLabel.FontSize = 12;
            ax1.XLim = [0 60];
            ax1.YLim = [0 7];
            ax1.XTickMode = 'manual';
            ax1.XLimMode = 'manual';
            ax1.XTick = 0:15:60;
            hold(ax1, 'on');
            
            while (ishandle(app.currentFigure))
                
                fwrite(app.Bt, "9");
                data = fgetl(app.Bt);
                [SFV,SFA,BV,twoV,threeV] = parseData(app, data);
                [SFV, SFA, SFP, BV, BC, twoV, twoP, twoA, threeV, threeP, threeA] = ADC(app, SFV, SFA, BV, twoV, threeV);
                assignData(app, SFV, SFA, SFP, BV, BC, twoV, twoA, twoP, threeV, threeA, threeP);
                
                graph(app, ax1, app.batteryPercent.Value);
                
            end
        end

        % Button pushed function: loadTwoCGraphButton
        function loadTwoCGraphButtonPushed(app, event)
            if (ishandle(app.currentFigure))
                close(app.currentFigure);
            end
            
            if (ishandle(app.voltageFigure))
                close(app.voltageFigure);
            end
            app.currentFigure = uifigure;
            ax1 = uiaxes(app.currentFigure);
            ax1.Title.String = 'DC Load Current Graph';
            ax1.Title.FontWeight = 'normal';
            ax1.XLabel.String = "Time (sec)";
            ax1.YLabel.String = "Current (mA)";
            ax1.XLabel.FontSize = 12;
            ax1.YLabel.FontSize = 12;
            ax1.XLim = [0 60];
            ax1.YLim = [0 7];
            ax1.XTickMode = 'manual';
            ax1.XLimMode = 'manual';
            ax1.XTick = 0:15:60;
            hold(ax1, 'on');
            
            while (ishandle(app.currentFigure))
                
                fwrite(app.Bt, "9");
                data = fgetl(app.Bt);
                [SFV,SFA,BV,twoV,threeV] = parseData(app, data);
                [SFV, SFA, SFP, BV, BC, twoV, twoP, twoA, threeV, threeP, threeA] = ADC(app, SFV, SFA, BV, twoV, threeV);
                assignData(app, SFV, SFA, SFP, BV, BC, twoV, twoA, twoP, threeV, threeA, threeP);
                
                graph(app, ax1, app.batteryPercent.Value);
                
            end
        end

        % Button pushed function: loadThreeVGraphButton
        function loadThreeVGraphButtonPushed(app, event)
            if (ishandle(app.currentFigure))
                close(app.currentFigure);
            end
            
            if (ishandle(app.voltageFigure))
                close(app.voltageFigure);
            end
            app.currentFigure = uifigure;
            ax1 = uiaxes(app.currentFigure);
            ax1.Title.String = 'AC Load Voltage Graph';
            ax1.Title.FontWeight = 'normal';
            ax1.XLabel.String = "Time (sec)";
            ax1.YLabel.String = "Voltage (V)";
            ax1.XLabel.FontSize = 12;
            ax1.YLabel.FontSize = 12;
            ax1.XLim = [0 60];
            ax1.YLim = [0 7];
            ax1.XTickMode = 'manual';
            ax1.XLimMode = 'manual';
            ax1.XTick = 0:15:60;
            hold(ax1, 'on');
            
            while (ishandle(app.currentFigure))
                
                fwrite(app.Bt, "9");
                data = fgetl(app.Bt);
                [SFV,SFA,BV,twoV,threeV] = parseData(app, data);
                [SFV, SFA, SFP, BV, BC, twoV, twoP, twoA, threeV, threeP, threeA] = ADC(app, SFV, SFA, BV, twoV, threeV);
                assignData(app, SFV, SFA, SFP, BV, BC, twoV, twoA, twoP, threeV, threeA, threeP);
                
                graph(app, ax1, app.batteryPercent.Value);
                
            end
        end

        % Button pushed function: loadThreeCGraphButton
        function loadThreeCGraphButtonPushed(app, event)
            if (ishandle(app.currentFigure))
                close(app.currentFigure);
            end
            
            if (ishandle(app.voltageFigure))
                close(app.voltageFigure);
            end
            app.currentFigure = uifigure;
            ax1 = uiaxes(app.currentFigure);
            ax1.Title.String = 'AC Load Current Graph';
            ax1.Title.FontWeight = 'normal';
            ax1.XLabel.String = "Time (sec)";
            ax1.YLabel.String = "Current (A)";
            ax1.XLabel.FontSize = 12;
            ax1.YLabel.FontSize = 12;
            ax1.XLim = [0 60];
            ax1.YLim = [0 7];
            ax1.XTickMode = 'manual';
            ax1.XLimMode = 'manual';
            ax1.XTick = 0:15:60;
            hold(ax1, 'on');
            
            while (ishandle(app.currentFigure))
                
                fwrite(app.Bt, "9");
                data = fgetl(app.Bt);
                [SFV,SFA,BV,twoV,threeV] = parseData(app, data);
                [SFV, SFA, SFP, BV, BC, twoV, twoP, twoA, threeV, threeP, threeA] = ADC(app, SFV, SFA, BV, twoV, threeV);
                assignData(app, SFV, SFA, SFP, BV, BC, twoV, twoA, twoP, threeV, threeA, threeP);
                
                graph(app, ax1, app.batteryPercent.Value);
                
            end
        end
    end

    % App initialization and construction
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure
            app.UIFigure = uifigure;
            app.UIFigure.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIFigure.Position = [100 100 768 562];
            app.UIFigure.Name = 'UI Figure';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.SelectionChangedFcn = createCallbackFcn(app, @TabGroupSelectionChanged, true);
            app.TabGroup.Position = [160 1 609 563];

            % Create SolarFarmTab
            app.SolarFarmTab = uitab(app.TabGroup);
            app.SolarFarmTab.Title = 'Solar Farm';
            app.SolarFarmTab.Scrollable = 'on';

            % Create PowerSwitchLabel
            app.PowerSwitchLabel = uilabel(app.SolarFarmTab);
            app.PowerSwitchLabel.HorizontalAlignment = 'center';
            app.PowerSwitchLabel.FontWeight = 'bold';
            app.PowerSwitchLabel.Position = [21 330 42 22];
            app.PowerSwitchLabel.Text = 'Power';

            % Create solarFarmSwitch
            app.solarFarmSwitch = uiswitch(app.SolarFarmTab, 'toggle');
            app.solarFarmSwitch.ValueChangedFcn = createCallbackFcn(app, @solarFarmSwitchValueChanged, true);
            app.solarFarmSwitch.BusyAction = 'cancel';
            app.solarFarmSwitch.Interruptible = 'off';
            app.solarFarmSwitch.FontWeight = 'bold';
            app.solarFarmSwitch.Position = [28 388 26 60];

            % Create SolarFarmDetailsLabel
            app.SolarFarmDetailsLabel = uilabel(app.SolarFarmTab);
            app.SolarFarmDetailsLabel.FontSize = 16;
            app.SolarFarmDetailsLabel.FontWeight = 'bold';
            app.SolarFarmDetailsLabel.Position = [134 476 146 22];
            app.SolarFarmDetailsLabel.Text = 'Solar Farm Details';

            % Create solarFarmCurrent
            app.solarFarmCurrent = uieditfield(app.SolarFarmTab, 'numeric');
            app.solarFarmCurrent.Position = [182 366 100 22];

            % Create VoltageVEditField_7Label
            app.VoltageVEditField_7Label = uilabel(app.SolarFarmTab);
            app.VoltageVEditField_7Label.HorizontalAlignment = 'right';
            app.VoltageVEditField_7Label.Position = [102 401 65 22];
            app.VoltageVEditField_7Label.Text = 'Voltage (V)';

            % Create solarFarmVoltage
            app.solarFarmVoltage = uieditfield(app.SolarFarmTab, 'numeric');
            app.solarFarmVoltage.Position = [182 401 100 22];

            % Create PowerWEditField_7Label
            app.PowerWEditField_7Label = uilabel(app.SolarFarmTab);
            app.PowerWEditField_7Label.HorizontalAlignment = 'right';
            app.PowerWEditField_7Label.Position = [105 436 62 22];
            app.PowerWEditField_7Label.Text = 'Power (W)';

            % Create solarFarmPower
            app.solarFarmPower = uieditfield(app.SolarFarmTab, 'numeric');
            app.solarFarmPower.Position = [182 436 100 22];

            % Create CurrentmAEditField_2Label_2
            app.CurrentmAEditField_2Label_2 = uilabel(app.SolarFarmTab);
            app.CurrentmAEditField_2Label_2.HorizontalAlignment = 'right';
            app.CurrentmAEditField_2Label_2.Position = [88 366 75 22];
            app.CurrentmAEditField_2Label_2.Text = 'Current (mA)';

            % Create VoltageGaugeLabel
            app.VoltageGaugeLabel = uilabel(app.SolarFarmTab);
            app.VoltageGaugeLabel.BackgroundColor = [1 1 1];
            app.VoltageGaugeLabel.HorizontalAlignment = 'center';
            app.VoltageGaugeLabel.Position = [103 28 46 22];
            app.VoltageGaugeLabel.Text = 'Voltage';

            % Create VoltageGauge
            app.VoltageGauge = uigauge(app.SolarFarmTab, 'circular');
            app.VoltageGauge.Limits = [0 20];
            app.VoltageGauge.MajorTicks = [0 5 10 15 20 25];
            app.VoltageGauge.ScaleColors = [1 0 0;1 1 0;0 1 0;0.902 0.902 0.902];
            app.VoltageGauge.ScaleColorLimits = [18 20;16 18;13 16;0 13];
            app.VoltageGauge.Position = [47 65 159 159];

            % Create CurrentGaugeLabel
            app.CurrentGaugeLabel = uilabel(app.SolarFarmTab);
            app.CurrentGaugeLabel.HorizontalAlignment = 'center';
            app.CurrentGaugeLabel.Position = [279 27 46 22];
            app.CurrentGaugeLabel.Text = 'Current';

            % Create CurrentGauge
            app.CurrentGauge = uigauge(app.SolarFarmTab, 'circular');
            app.CurrentGauge.Limits = [0 6];
            app.CurrentGauge.MajorTicks = [0 1 2 3 4 5 6];
            app.CurrentGauge.ScaleColors = [1 0 0;1 1 0;0 1 0;0.902 0.902 0.902];
            app.CurrentGauge.ScaleColorLimits = [5.4 6;5 5.4;3 5;0 3];
            app.CurrentGauge.Position = [223 64 159 159];

            % Create PowerGaugeLabel
            app.PowerGaugeLabel = uilabel(app.SolarFarmTab);
            app.PowerGaugeLabel.HorizontalAlignment = 'center';
            app.PowerGaugeLabel.Position = [464 27 40 22];
            app.PowerGaugeLabel.Text = 'Power';

            % Create PowerGauge
            app.PowerGauge = uigauge(app.SolarFarmTab, 'circular');
            app.PowerGauge.Limits = [0 125];
            app.PowerGauge.MajorTicks = [0 20 40 60 80 100 120];
            app.PowerGauge.Position = [404 64 160 160];

            % Create UIAxes
            app.UIAxes = uiaxes(app.SolarFarmTab);
            title(app.UIAxes, 'Power')
            xlabel(app.UIAxes, 'Time (sec)')
            ylabel(app.UIAxes, 'Power (W)')
            app.UIAxes.PlotBoxAspectRatio = [1 0.509881422924901 0.509881422924901];
            app.UIAxes.XLim = [0 60];
            app.UIAxes.YLim = [0 250];
            app.UIAxes.XTick = [0 15 30 45 60];
            app.UIAxes.XTickLabel = {'0'; '15'; '30'; '45'; '60'};
            app.UIAxes.YTick = [0 50 100 150 200 250];
            app.UIAxes.YTickLabel = {'0'; '50'; '100'; '150'; '200'; '250'};
            app.UIAxes.Position = [301 310 300 215];

            % Create solarFarmVGraphButton
            app.solarFarmVGraphButton = uibutton(app.SolarFarmTab, 'push');
            app.solarFarmVGraphButton.ButtonPushedFcn = createCallbackFcn(app, @solarFarmVGraphButtonPushed, true);
            app.solarFarmVGraphButton.Position = [77 231 100 22];
            app.solarFarmVGraphButton.Text = 'Graph';

            % Create solarFarmCGraphButton
            app.solarFarmCGraphButton = uibutton(app.SolarFarmTab, 'push');
            app.solarFarmCGraphButton.ButtonPushedFcn = createCallbackFcn(app, @solarFarmCGraphButtonPushed, true);
            app.solarFarmCGraphButton.Position = [252 231 100 22];
            app.solarFarmCGraphButton.Text = 'Graph';

            % Create BatteryOutputTab
            app.BatteryOutputTab = uitab(app.TabGroup);
            app.BatteryOutputTab.Title = 'Battery Output';
            app.BatteryOutputTab.Interruptible = 'off';

            % Create BatteryDetailsLabel
            app.BatteryDetailsLabel = uilabel(app.BatteryOutputTab);
            app.BatteryDetailsLabel.FontSize = 16;
            app.BatteryDetailsLabel.FontWeight = 'bold';
            app.BatteryDetailsLabel.Position = [161 476 118 22];
            app.BatteryDetailsLabel.Text = 'Battery Details';

            % Create PowerSwitch_2Label
            app.PowerSwitch_2Label = uilabel(app.BatteryOutputTab);
            app.PowerSwitch_2Label.HorizontalAlignment = 'center';
            app.PowerSwitch_2Label.FontWeight = 'bold';
            app.PowerSwitch_2Label.Position = [21 330 42 22];
            app.PowerSwitch_2Label.Text = 'Power';

            % Create batterySwitch
            app.batterySwitch = uiswitch(app.BatteryOutputTab, 'toggle');
            app.batterySwitch.ValueChangedFcn = createCallbackFcn(app, @batterySwitchValueChanged, true);
            app.batterySwitch.FontWeight = 'bold';
            app.batterySwitch.Position = [28 388 26 60];

            % Create BatteryPercentLabel
            app.BatteryPercentLabel = uilabel(app.BatteryOutputTab);
            app.BatteryPercentLabel.HorizontalAlignment = 'right';
            app.BatteryPercentLabel.Position = [85 436 110 22];
            app.BatteryPercentLabel.Text = 'Battery Percent (%)';

            % Create batteryPercent
            app.batteryPercent = uieditfield(app.BatteryOutputTab, 'numeric');
            app.batteryPercent.Position = [210 436 100 22];

            % Create VoltageVEditField_8Label
            app.VoltageVEditField_8Label = uilabel(app.BatteryOutputTab);
            app.VoltageVEditField_8Label.HorizontalAlignment = 'right';
            app.VoltageVEditField_8Label.Position = [130 402 65 22];
            app.VoltageVEditField_8Label.Text = 'Voltage (V)';

            % Create batteryVoltage
            app.batteryVoltage = uieditfield(app.BatteryOutputTab, 'numeric');
            app.batteryVoltage.Position = [210 402 100 22];

            % Create BatteryChargeGaugeLabel
            app.BatteryChargeGaugeLabel = uilabel(app.BatteryOutputTab);
            app.BatteryChargeGaugeLabel.HorizontalAlignment = 'center';
            app.BatteryChargeGaugeLabel.FontWeight = 'bold';
            app.BatteryChargeGaugeLabel.Position = [258 26 92 22];
            app.BatteryChargeGaugeLabel.Text = 'Battery Charge';

            % Create BatteryChargeGauge
            app.BatteryChargeGauge = uigauge(app.BatteryOutputTab, 'semicircular');
            app.BatteryChargeGauge.ScaleColors = [1 0 0;1 1 0;0 1 0];
            app.BatteryChargeGauge.ScaleColorLimits = [20 50;50 80;80 100];
            app.BatteryChargeGauge.Position = [115 52 379 205];

            % Create VoltageGauge_2Label
            app.VoltageGauge_2Label = uilabel(app.BatteryOutputTab);
            app.VoltageGauge_2Label.BackgroundColor = [1 1 1];
            app.VoltageGauge_2Label.HorizontalAlignment = 'center';
            app.VoltageGauge_2Label.Position = [437 281 46 22];
            app.VoltageGauge_2Label.Text = 'Voltage';

            % Create batteryVGauge
            app.batteryVGauge = uigauge(app.BatteryOutputTab, 'circular');
            app.batteryVGauge.Limits = [0 20];
            app.batteryVGauge.MajorTicks = [0 5 10 15 20 25];
            app.batteryVGauge.ScaleColors = [1 0 0;1 1 0;0 1 0;0.902 0.902 0.902];
            app.batteryVGauge.ScaleColorLimits = [18 20;16 18;13 16;0 13];
            app.batteryVGauge.Position = [381 318 159 159];

            % Create batteryVGraphButton
            app.batteryVGraphButton = uibutton(app.BatteryOutputTab, 'push');
            app.batteryVGraphButton.ButtonPushedFcn = createCallbackFcn(app, @batteryVGraphButtonPushed, true);
            app.batteryVGraphButton.Position = [411 484 100 22];
            app.batteryVGraphButton.Text = 'Graph';

            % Create loadTwo
            app.loadTwo = uitab(app.TabGroup);
            app.loadTwo.Title = '12V DC Load';

            % Create loadTwoPowerGraph
            app.loadTwoPowerGraph = uiaxes(app.loadTwo);
            title(app.loadTwoPowerGraph, 'Power')
            xlabel(app.loadTwoPowerGraph, 'Time (sec)')
            ylabel(app.loadTwoPowerGraph, 'Power (W)')
            app.loadTwoPowerGraph.PlotBoxAspectRatio = [1 0.65948275862069 0.65948275862069];
            app.loadTwoPowerGraph.FontSize = 14;
            app.loadTwoPowerGraph.XLim = [0 60];
            app.loadTwoPowerGraph.YLim = [0 50];
            app.loadTwoPowerGraph.XTick = [0 15 30 45 60];
            app.loadTwoPowerGraph.XTickLabel = {'0'; '15'; '30'; '45'; '60'};
            app.loadTwoPowerGraph.YTick = [0 10 20 30 40 50];
            app.loadTwoPowerGraph.YTickLabel = {'0'; '10'; '20'; '30'; '40'; '50'};
            app.loadTwoPowerGraph.Position = [301 288 290 220];

            % Create VDCLoadLabel_2
            app.VDCLoadLabel_2 = uilabel(app.loadTwo);
            app.VDCLoadLabel_2.FontSize = 16;
            app.VDCLoadLabel_2.FontWeight = 'bold';
            app.VDCLoadLabel_2.Position = [148 476 104 22];
            app.VDCLoadLabel_2.Text = '12V DC Load';

            % Create PowerSwitch_6Label
            app.PowerSwitch_6Label = uilabel(app.loadTwo);
            app.PowerSwitch_6Label.HorizontalAlignment = 'center';
            app.PowerSwitch_6Label.FontWeight = 'bold';
            app.PowerSwitch_6Label.Position = [21 334 42 22];
            app.PowerSwitch_6Label.Text = 'Power';

            % Create loadTwoSwitch
            app.loadTwoSwitch = uiswitch(app.loadTwo, 'toggle');
            app.loadTwoSwitch.ValueChangedFcn = createCallbackFcn(app, @loadTwoSwitchValueChanged, true);
            app.loadTwoSwitch.FontWeight = 'bold';
            app.loadTwoSwitch.Position = [29 392 25 57];

            % Create VoltageVEditField_6Label
            app.VoltageVEditField_6Label = uilabel(app.loadTwo);
            app.VoltageVEditField_6Label.HorizontalAlignment = 'right';
            app.VoltageVEditField_6Label.Position = [102 400 65 22];
            app.VoltageVEditField_6Label.Text = 'Voltage (V)';

            % Create loadTwoVoltage
            app.loadTwoVoltage = uieditfield(app.loadTwo, 'numeric');
            app.loadTwoVoltage.Position = [182 400 100 22];

            % Create CurrentmAEditField_6Label
            app.CurrentmAEditField_6Label = uilabel(app.loadTwo);
            app.CurrentmAEditField_6Label.HorizontalAlignment = 'right';
            app.CurrentmAEditField_6Label.Position = [88 366 75 22];
            app.CurrentmAEditField_6Label.Text = 'Current (mA)';

            % Create loadTwoCurrent
            app.loadTwoCurrent = uieditfield(app.loadTwo, 'numeric');
            app.loadTwoCurrent.Position = [182 364 100 22];

            % Create PowerWEditField_6Label
            app.PowerWEditField_6Label = uilabel(app.loadTwo);
            app.PowerWEditField_6Label.HorizontalAlignment = 'right';
            app.PowerWEditField_6Label.Position = [105 436 62 22];
            app.PowerWEditField_6Label.Text = 'Power (W)';

            % Create loadTwoPower
            app.loadTwoPower = uieditfield(app.loadTwo, 'numeric');
            app.loadTwoPower.Position = [182 436 100 22];

            % Create ResistanceLabel_3
            app.ResistanceLabel_3 = uilabel(app.loadTwo);
            app.ResistanceLabel_3.HorizontalAlignment = 'right';
            app.ResistanceLabel_3.Position = [78 328 85 22];
            app.ResistanceLabel_3.Text = 'Resistance (?)';

            % Create loadTwoResistance
            app.loadTwoResistance = uieditfield(app.loadTwo, 'numeric');
            app.loadTwoResistance.Limits = [0 Inf];
            app.loadTwoResistance.Position = [182 328 100 22];
            app.loadTwoResistance.Value = 15;

            % Create VoltageGauge_3Label_2
            app.VoltageGauge_3Label_2 = uilabel(app.loadTwo);
            app.VoltageGauge_3Label_2.BackgroundColor = [1 1 1];
            app.VoltageGauge_3Label_2.HorizontalAlignment = 'center';
            app.VoltageGauge_3Label_2.Position = [103 28 46 22];
            app.VoltageGauge_3Label_2.Text = 'Voltage';

            % Create loadTwoVGauge
            app.loadTwoVGauge = uigauge(app.loadTwo, 'circular');
            app.loadTwoVGauge.Limits = [0 20];
            app.loadTwoVGauge.MajorTicks = [0 5 10 15 20 25];
            app.loadTwoVGauge.ScaleColors = [1 0 0;1 1 0;0 1 0;0.902 0.902 0.902];
            app.loadTwoVGauge.ScaleColorLimits = [18 20;16 18;13 16;0 13];
            app.loadTwoVGauge.Position = [47 65 159 159];

            % Create CurrentGauge_3Label_2
            app.CurrentGauge_3Label_2 = uilabel(app.loadTwo);
            app.CurrentGauge_3Label_2.HorizontalAlignment = 'center';
            app.CurrentGauge_3Label_2.Position = [279 27 46 22];
            app.CurrentGauge_3Label_2.Text = 'Current';

            % Create loadTwoCGauge
            app.loadTwoCGauge = uigauge(app.loadTwo, 'circular');
            app.loadTwoCGauge.Limits = [0 6];
            app.loadTwoCGauge.MajorTicks = [0 1 2 3 4 5 6];
            app.loadTwoCGauge.ScaleColors = [1 0 0;1 1 0;0 1 0;0.902 0.902 0.902];
            app.loadTwoCGauge.ScaleColorLimits = [5.4 6;5 5.4;3 5;0 3];
            app.loadTwoCGauge.Position = [223 64 159 159];

            % Create PowerGauge_3Label_2
            app.PowerGauge_3Label_2 = uilabel(app.loadTwo);
            app.PowerGauge_3Label_2.HorizontalAlignment = 'center';
            app.PowerGauge_3Label_2.Position = [464 27 40 22];
            app.PowerGauge_3Label_2.Text = 'Power';

            % Create loadTwoPowerGauge
            app.loadTwoPowerGauge = uigauge(app.loadTwo, 'circular');
            app.loadTwoPowerGauge.Limits = [0 80];
            app.loadTwoPowerGauge.MajorTicks = [0 20 40 60 80 100 120];
            app.loadTwoPowerGauge.Position = [404 64 160 160];

            % Create loadTwoVGraphButton
            app.loadTwoVGraphButton = uibutton(app.loadTwo, 'push');
            app.loadTwoVGraphButton.ButtonPushedFcn = createCallbackFcn(app, @loadTwoVGraphButtonPushed, true);
            app.loadTwoVGraphButton.Position = [77 231 100 22];
            app.loadTwoVGraphButton.Text = 'Graph';

            % Create loadTwoCGraphButton
            app.loadTwoCGraphButton = uibutton(app.loadTwo, 'push');
            app.loadTwoCGraphButton.ButtonPushedFcn = createCallbackFcn(app, @loadTwoCGraphButtonPushed, true);
            app.loadTwoCGraphButton.Position = [252 231 100 22];
            app.loadTwoCGraphButton.Text = 'Graph';

            % Create loadThree
            app.loadThree = uitab(app.TabGroup);
            app.loadThree.Title = '24V DC Load';

            % Create loadThreePowerGraph
            app.loadThreePowerGraph = uiaxes(app.loadThree);
            title(app.loadThreePowerGraph, 'Power')
            xlabel(app.loadThreePowerGraph, 'Time (sec)')
            ylabel(app.loadThreePowerGraph, 'Power (W)')
            app.loadThreePowerGraph.PlotBoxAspectRatio = [1 0.65948275862069 0.65948275862069];
            app.loadThreePowerGraph.FontSize = 14;
            app.loadThreePowerGraph.XLim = [0 60];
            app.loadThreePowerGraph.YLim = [0 50];
            app.loadThreePowerGraph.XTick = [0 15 30 45 60];
            app.loadThreePowerGraph.XTickLabel = {'0'; '15'; '30'; '45'; '60'};
            app.loadThreePowerGraph.YTick = [0 10 20 30 40 50];
            app.loadThreePowerGraph.YTickLabel = {'0'; '10'; '20'; '30'; '40'; '50'};
            app.loadThreePowerGraph.Position = [301 288 290 220];

            % Create VDCLoadLabel_3
            app.VDCLoadLabel_3 = uilabel(app.loadThree);
            app.VDCLoadLabel_3.FontSize = 16;
            app.VDCLoadLabel_3.FontWeight = 'bold';
            app.VDCLoadLabel_3.Position = [149 476 104 22];
            app.VDCLoadLabel_3.Text = '24V DC Load';

            % Create PowerSwitch_5Label
            app.PowerSwitch_5Label = uilabel(app.loadThree);
            app.PowerSwitch_5Label.HorizontalAlignment = 'center';
            app.PowerSwitch_5Label.FontWeight = 'bold';
            app.PowerSwitch_5Label.Position = [22 329 42 22];
            app.PowerSwitch_5Label.Text = 'Power';

            % Create loadThreeSwitch
            app.loadThreeSwitch = uiswitch(app.loadThree, 'toggle');
            app.loadThreeSwitch.ValueChangedFcn = createCallbackFcn(app, @loadThreeSwitchValueChanged, true);
            app.loadThreeSwitch.FontWeight = 'bold';
            app.loadThreeSwitch.Position = [29 387 26 60];

            % Create VoltageVEditField_5Label
            app.VoltageVEditField_5Label = uilabel(app.loadThree);
            app.VoltageVEditField_5Label.HorizontalAlignment = 'right';
            app.VoltageVEditField_5Label.Position = [102 400 65 22];
            app.VoltageVEditField_5Label.Text = 'Voltage (V)';

            % Create loadThreeVoltage
            app.loadThreeVoltage = uieditfield(app.loadThree, 'numeric');
            app.loadThreeVoltage.Position = [182 400 100 22];

            % Create CurrentmAEditField_5Label
            app.CurrentmAEditField_5Label = uilabel(app.loadThree);
            app.CurrentmAEditField_5Label.HorizontalAlignment = 'right';
            app.CurrentmAEditField_5Label.Position = [88 366 75 22];
            app.CurrentmAEditField_5Label.Text = 'Current (mA)';

            % Create loadThreeCurrent
            app.loadThreeCurrent = uieditfield(app.loadThree, 'numeric');
            app.loadThreeCurrent.Position = [182 364 100 22];

            % Create PowerWEditField_5Label
            app.PowerWEditField_5Label = uilabel(app.loadThree);
            app.PowerWEditField_5Label.HorizontalAlignment = 'right';
            app.PowerWEditField_5Label.Position = [105 436 62 22];
            app.PowerWEditField_5Label.Text = 'Power (W)';

            % Create loadThreePower
            app.loadThreePower = uieditfield(app.loadThree, 'numeric');
            app.loadThreePower.Position = [182 436 100 22];

            % Create ResistanceLabel_4
            app.ResistanceLabel_4 = uilabel(app.loadThree);
            app.ResistanceLabel_4.HorizontalAlignment = 'right';
            app.ResistanceLabel_4.Position = [78 328 85 22];
            app.ResistanceLabel_4.Text = 'Resistance (?)';

            % Create loadThreeResistance
            app.loadThreeResistance = uieditfield(app.loadThree, 'numeric');
            app.loadThreeResistance.Position = [182 328 100 22];
            app.loadThreeResistance.Value = 40;

            % Create VoltageGauge_3Label_3
            app.VoltageGauge_3Label_3 = uilabel(app.loadThree);
            app.VoltageGauge_3Label_3.BackgroundColor = [1 1 1];
            app.VoltageGauge_3Label_3.HorizontalAlignment = 'center';
            app.VoltageGauge_3Label_3.Position = [103 28 46 22];
            app.VoltageGauge_3Label_3.Text = 'Voltage';

            % Create loadThreeVGauge
            app.loadThreeVGauge = uigauge(app.loadThree, 'circular');
            app.loadThreeVGauge.Limits = [0 20];
            app.loadThreeVGauge.MajorTicks = [0 5 10 15 20 25];
            app.loadThreeVGauge.ScaleColors = [1 0 0;1 1 0;0 1 0;0.902 0.902 0.902];
            app.loadThreeVGauge.ScaleColorLimits = [18 20;16 18;13 16;0 13];
            app.loadThreeVGauge.Position = [47 65 159 159];

            % Create CurrentGauge_3Label_3
            app.CurrentGauge_3Label_3 = uilabel(app.loadThree);
            app.CurrentGauge_3Label_3.HorizontalAlignment = 'center';
            app.CurrentGauge_3Label_3.Position = [279 27 46 22];
            app.CurrentGauge_3Label_3.Text = 'Current';

            % Create loadThreeCGauge
            app.loadThreeCGauge = uigauge(app.loadThree, 'circular');
            app.loadThreeCGauge.Limits = [0 6];
            app.loadThreeCGauge.MajorTicks = [0 1 2 3 4 5 6];
            app.loadThreeCGauge.ScaleColors = [1 0 0;1 1 0;0 1 0;0.902 0.902 0.902];
            app.loadThreeCGauge.ScaleColorLimits = [5.4 6;5 5.4;3 5;0 3];
            app.loadThreeCGauge.Position = [223 64 159 159];

            % Create PowerGauge_3Label_3
            app.PowerGauge_3Label_3 = uilabel(app.loadThree);
            app.PowerGauge_3Label_3.HorizontalAlignment = 'center';
            app.PowerGauge_3Label_3.Position = [464 27 40 22];
            app.PowerGauge_3Label_3.Text = 'Power';

            % Create loadThreePowerGauge
            app.loadThreePowerGauge = uigauge(app.loadThree, 'circular');
            app.loadThreePowerGauge.Limits = [0 80];
            app.loadThreePowerGauge.MajorTicks = [0 20 40 60 80 100 120];
            app.loadThreePowerGauge.Position = [404 64 160 160];

            % Create loadThreeVGraphButton
            app.loadThreeVGraphButton = uibutton(app.loadThree, 'push');
            app.loadThreeVGraphButton.ButtonPushedFcn = createCallbackFcn(app, @loadThreeVGraphButtonPushed, true);
            app.loadThreeVGraphButton.Position = [77 231 100 22];
            app.loadThreeVGraphButton.Text = 'Graph';

            % Create loadThreeCGraphButton
            app.loadThreeCGraphButton = uibutton(app.loadThree, 'push');
            app.loadThreeCGraphButton.ButtonPushedFcn = createCallbackFcn(app, @loadThreeCGraphButtonPushed, true);
            app.loadThreeCGraphButton.Position = [252 231 100 22];
            app.loadThreeCGraphButton.Text = 'Graph';

            % Create MicrogridStatusPanel
            app.MicrogridStatusPanel = uipanel(app.UIFigure);
            app.MicrogridStatusPanel.TitlePosition = 'centertop';
            app.MicrogridStatusPanel.Title = 'Microgrid Status';
            app.MicrogridStatusPanel.FontWeight = 'bold';
            app.MicrogridStatusPanel.Position = [11 318 140 140];

            % Create SolarFarmLampLabel
            app.SolarFarmLampLabel = uilabel(app.MicrogridStatusPanel);
            app.SolarFarmLampLabel.HorizontalAlignment = 'right';
            app.SolarFarmLampLabel.Position = [21 88 65 22];
            app.SolarFarmLampLabel.Text = 'Solar Farm';

            % Create SolarFarmLamp
            app.SolarFarmLamp = uilamp(app.MicrogridStatusPanel);
            app.SolarFarmLamp.Position = [111 90 20 20];
            app.SolarFarmLamp.Color = [1 0 0];

            % Create BatteryLampLabel
            app.BatteryLampLabel = uilabel(app.MicrogridStatusPanel);
            app.BatteryLampLabel.HorizontalAlignment = 'right';
            app.BatteryLampLabel.Position = [21 60 44 22];
            app.BatteryLampLabel.Text = 'Battery';

            % Create BatteryLamp
            app.BatteryLamp = uilamp(app.MicrogridStatusPanel);
            app.BatteryLamp.Position = [111 62 20 20];
            app.BatteryLamp.Color = [1 0 0];

            % Create VDCLoadLamp_2Label
            app.VDCLoadLamp_2Label = uilabel(app.MicrogridStatusPanel);
            app.VDCLoadLamp_2Label.HorizontalAlignment = 'right';
            app.VDCLoadLamp_2Label.Position = [22 8 78 22];
            app.VDCLoadLamp_2Label.Text = '24V DC Load';

            % Create loadThreeStatus
            app.loadThreeStatus = uilamp(app.MicrogridStatusPanel);
            app.loadThreeStatus.Position = [112 8 20 20];
            app.loadThreeStatus.Color = [1 0 0];

            % Create VDCLoadLabel
            app.VDCLoadLabel = uilabel(app.MicrogridStatusPanel);
            app.VDCLoadLabel.HorizontalAlignment = 'right';
            app.VDCLoadLabel.Position = [21 35 78 22];
            app.VDCLoadLabel.Text = '12V DC Load';

            % Create loadTwoStatus
            app.loadTwoStatus = uilamp(app.MicrogridStatusPanel);
            app.loadTwoStatus.Position = [112 35 20 20];
            app.loadTwoStatus.Color = [1 0 0];

            % Create SystemPowerSwitchLabel
            app.SystemPowerSwitchLabel = uilabel(app.UIFigure);
            app.SystemPowerSwitchLabel.HorizontalAlignment = 'center';
            app.SystemPowerSwitchLabel.FontSize = 14;
            app.SystemPowerSwitchLabel.FontWeight = 'bold';
            app.SystemPowerSwitchLabel.Position = [29 477 101 22];
            app.SystemPowerSwitchLabel.Text = 'System Power';

            % Create SystemPowerSwitch
            app.SystemPowerSwitch = uiswitch(app.UIFigure, 'slider');
            app.SystemPowerSwitch.ValueChangedFcn = createCallbackFcn(app, @SystemPowerSwitchValueChanged, true);
            app.SystemPowerSwitch.Position = [45 514 70 31];

            % Create BluetoothStatusPanel
            app.BluetoothStatusPanel = uipanel(app.UIFigure);
            app.BluetoothStatusPanel.TitlePosition = 'centertop';
            app.BluetoothStatusPanel.Title = 'Bluetooth Status';
            app.BluetoothStatusPanel.FontWeight = 'bold';
            app.BluetoothStatusPanel.Position = [11 141 140 163];

            % Create ConnectionLampLabel
            app.ConnectionLampLabel = uilabel(app.BluetoothStatusPanel);
            app.ConnectionLampLabel.HorizontalAlignment = 'right';
            app.ConnectionLampLabel.Position = [21 113 66 22];
            app.ConnectionLampLabel.Text = 'Connection';

            % Create ConnectionLamp
            app.ConnectionLamp = uilamp(app.BluetoothStatusPanel);
            app.ConnectionLamp.Position = [111 114 20 20];
            app.ConnectionLamp.Color = [1 0 0];

            % Create DisconnectButton
            app.DisconnectButton = uibutton(app.BluetoothStatusPanel, 'push');
            app.DisconnectButton.ButtonPushedFcn = createCallbackFcn(app, @DisconnectButtonPushed, true);
            app.DisconnectButton.Position = [29 9 75 22];
            app.DisconnectButton.Text = 'Disconnect';

            % Create RemoteIDLabel
            app.RemoteIDLabel = uilabel(app.BluetoothStatusPanel);
            app.RemoteIDLabel.Position = [29 87 63 22];
            app.RemoteIDLabel.Text = 'RemoteID:';

            % Create BTIDLabel
            app.BTIDLabel = uilabel(app.BluetoothStatusPanel);
            app.BTIDLabel.HorizontalAlignment = 'center';
            app.BTIDLabel.Visible = 'off';
            app.BTIDLabel.Position = [12 61 104 22];
            app.BTIDLabel.Text = 'BTID';

            % Create ConnectButton
            app.ConnectButton = uibutton(app.BluetoothStatusPanel, 'push');
            app.ConnectButton.ButtonPushedFcn = createCallbackFcn(app, @ConnectButtonPushed, true);
            app.ConnectButton.Position = [29 35 75 22];
            app.ConnectButton.Text = 'Connect';

            % Create MicrogridbyLabel
            app.MicrogridbyLabel = uilabel(app.UIFigure);
            app.MicrogridbyLabel.FontWeight = 'bold';
            app.MicrogridbyLabel.Position = [36 86 87 22];
            app.MicrogridbyLabel.Text = 'Microgrid by:';

            % Create JordanMorrisLabel
            app.JordanMorrisLabel = uilabel(app.UIFigure);
            app.JordanMorrisLabel.FontWeight = 'bold';
            app.JordanMorrisLabel.Position = [36 65 87 22];
            app.JordanMorrisLabel.Text = 'Jordan Morris';

            % Create EskindirAbebeLabel
            app.EskindirAbebeLabel = uilabel(app.UIFigure);
            app.EskindirAbebeLabel.FontWeight = 'bold';
            app.EskindirAbebeLabel.Position = [36 46 93 22];
            app.EskindirAbebeLabel.Text = 'Eskindir Abebe';

            % Create BradenLeeLabel
            app.BradenLeeLabel = uilabel(app.UIFigure);
            app.BradenLeeLabel.FontWeight = 'bold';
            app.BradenLeeLabel.Position = [36 27 87 22];
            app.BradenLeeLabel.Text = 'Braden Lee';

            % Create KennetThurmanLabel
            app.KennetThurmanLabel = uilabel(app.UIFigure);
            app.KennetThurmanLabel.FontWeight = 'bold';
            app.KennetThurmanLabel.Position = [36 8 101 22];
            app.KennetThurmanLabel.Text = 'Kennet Thurman';

            % Create ProjectLab3Label
            app.ProjectLab3Label = uilabel(app.UIFigure);
            app.ProjectLab3Label.FontWeight = 'bold';
            app.ProjectLab3Label.Position = [36 107 87 22];
            app.ProjectLab3Label.Text = 'Project Lab 3';
        end
    end

    methods (Access = public)

        % Construct app
        function app = PL3GUI_exported

            % Create and configure components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end