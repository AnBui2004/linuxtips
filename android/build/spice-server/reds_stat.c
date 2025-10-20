    #ifdef __ANDROID__
        /* Android does not support POSIX shared memory */
    #else
        if (glob("/dev/shm/spice.*", 0, NULL, &globbuf)) {
            return pid;
        }
    #endif
    if (globbuf.gl_pathc == 1) {
        const char *p = strchr(globbuf.gl_pathv[0], '.');
        if (p) {
            pid = atoi(p+1);
        }
    }
    #ifdef __ANDROID__
        /* Android does not support POSIX shared memory */
    #else
        globfree(&globbuf);
    #endif
    return pid;


    #ifdef __ANDROID__
        /* Android does not support POSIX shared memory */
    #else
        if ((fd = shm_open(shm_name, O_RDONLY, 0444)) == -1) {
            perror("shm_open");
            free(shm_name);
            return ret;
        }
    #endif

    
    #ifdef __ANDROID__
        /* Android does not support POSIX shared memory */
    #else
        shm_unlink(shm_name);
    #endif
    free(shm_name);
    return ret;