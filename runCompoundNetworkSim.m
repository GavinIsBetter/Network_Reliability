%% Function runCompoundNetworkSim()
% Parameters
%  K - the number of packets in the application message
%  p - the probability of failure 
%  N - the number of simulations to run
%
% Returns: the average numeric result across the total simulations

function result = runCompoundNetworkSim(K,p,N)

    simResults = ones(1,N); % a place to store the result of each simulation
    
    for i=1:N
        txAttemptCount = 0; % transmission count
        pktSuccessCount = 0; % number of packets that have made it across
    
        while pktSuccessCount < K
            
            %Link 1 and 2 in parrellel
            %Link 3 in series
            r = rand; % generate random number to determine if packet is successful across first link (r > p)
            r2 = rand; % generate random number to determine if packet is successful across second link (r2 > p)
            r3 = rand; %generate random number to determine if packet is successful across second link (r3 > p)
            txAttemptCount = txAttemptCount + 1; % count 1st attempt
        
            % while packet transmissions is not successful across the parrellel links and the third link (r < p && r2<p)|| r3<p 
            while (r < p && r2<p) || r3<p
                r = rand; % transmit again, generate new success check value r
                r2 = rand; % generate new success check value r2
                r3 = rand; % generate new success check value r3
                txAttemptCount = txAttemptCount + 1; % count additional attempt
            end
        
            pktSuccessCount = pktSuccessCount + 1; % increase success count after success (r > p || r2>p)&& r3>p 
        end
    
        simResults(i) = txAttemptCount; % record total number of attempted transmissions before entire application message (K successful packets) transmitted
    end

    result = mean(simResults);
end
