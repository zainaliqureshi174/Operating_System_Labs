#include <unistd.h>
#include <sys/types.h>
#include <iostream>
using namespace std;

int main()
{
	pid_t pid1 = fork ();
	if (pid1 > 0)
	{
		cout << "I am Parent process\n";
		cout << "My PID: " << getpid() << "\n";
		pid_t pid2 = fork();
		if (pid2 == 0)
		{
			cout << "I am Child2\n";
			cout << "My PID: " << getpid() << "\n";
			cout << "My Parent PID: " << getppid() << "\n";
		}
		else if ( pid2 < 0)
		{
			cout << "Error in Fork\n";
		}
	}
	else if (pid1 == 0)
	{
		cout << "I am Child1\n";
		cout << "My PID: " << getpid() << "\n";
		cout << "My Parent PID: " << getppid() << "\n";
	}
	else if ( pid1 < 0)
	{
		cout << "Error in Fork\n";
    }

    return 0;
}

