#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <pthread.h>
#include <sys/types.h>
#include <sys/wait.h>

void *thread_function(void *arg) {
  printf("Hilo creado %d\n", getpid());
  return NULL;
}

int main() {
  pid_t pid;
  pthread_t thread_id;
  
  pid = fork();
  if (pid == 0) { // proceso hijo
    fork();
    pthread_create(&thread_id, NULL, thread_function, NULL);
  } else {
    printf("Error al crear el proceso hijo\n");
    exit(1);
  }
  fork();

  return 0;
}
