    #ifdef __ANDROID__
    /* Android does not support POSIX shared memory */
    #else
       shm_unlink(stat_file->shm_name);
       if ((fd = shm_open(stat_file->shm_name, O_CREAT | O_RDWR, 0444)) == -1) {
           spice_error("statistics shm_open failed, %s", strerror(errno));
           goto cleanup;
       }
    #endif


void stat_file_unlink(RedStatFile *stat_file)
{
    if (stat_file->shm_name) {
        #ifdef __ANDROID__
            /* Android does not support POSIX shared memory */
        #else
            shm_unlink(stat_file->shm_name);
        #endif
        g_free(stat_file->shm_name);
        stat_file->shm_name = NULL;
    }
}