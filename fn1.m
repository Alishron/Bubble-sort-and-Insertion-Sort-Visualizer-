
function bubbleSortVisualization(array)
    n = length(array);
    x = 0:(n-1); % X-axis indices starting from 0

    % Create initial bar plot
    h = bar(x, array);
    title('Bubble Sort Visualization');
    xlabel('Index');
    ylabel('Value');
    xticks(x); % Set x-axis ticks to match the indices
    ylim([0 max(array)+1]); % Set Y-axis limit for better visualization
    pauseTime = 0.5; % Pause time to control the speed of visualization

    % Bubble Sort Algorithm with Visualization
    for i = 1:n-1
        for j = 1:n-i
            if array(j) > array(j + 1)
                % Swap elements
                temp = array(j);
                array(j) = array(j + 1);
                array(j + 1) = temp;

                % Update the bar plot
                set(h, 'YData', array);
                pause(pauseTime); % Pause for visualization
            end
        end
    end

    % Final update to ensure the array is fully sorted
    set(h, 'YData', array);
    title('Array Sorted');
end


function insertionSortVisualizer(array)
    n = length(array);
    x = 0:(n-1); % X-axis indices starting from 0

    % Create initial bar plot
    h = bar(x, array, 'FaceColor', [0.2 0.2 0.5]); % Initial bar plot with custom color
    title('Insertion Sort Visualization');
    xlabel('Index');
    ylabel('Value');
    xticks(x); % Set x-axis ticks to match the indices
    ylim([0 max(array)+1]); % Set Y-axis limit for better visualization
    pauseTime = 1; % Pause time to control the speed of visualization

    % Start the insertion sort process
    for i = 2:n
        % Current element to be inserted
        key = array(i);
        j = i - 1;

        % Shift elements of array[1..i-1], that are greater than key, to one position ahead
        % of their current position
        while j >= 1 && array(j) > key
            array(j + 1) = array(j);
            j = j - 1;

            % Update the bar plot
            set(h, 'YData', array);
            pause(pauseTime); % Pause for visualization
        end
        
        % Place the key into its correct position in the sorted part
        array(j + 1) = key;
    end

    % Final update to ensure the array is fully sorted
    set(h, 'YData', array);
    title('Array Sorted');
end






% Main script to call the bubbleSortVisualization function
array = [5,4,3,2,1];
disp('Original array:');
disp(array);

insertionSortVisualizer(array);

%bubbleSortVisualization(array);



