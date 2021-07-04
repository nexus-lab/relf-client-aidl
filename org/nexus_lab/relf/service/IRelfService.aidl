package org.nexus_lab.relf.service;

import android.os.ParcelFileDescriptor;
import org.nexus_lab.relf.service.parcel.ParcelStructStat;
import org.nexus_lab.relf.service.parcel.ParcelStructStatvfs;
import org.nexus_lab.relf.service.parcel.ParcelStructPasswd;

interface IRelfService {
    ParcelStructStat stat(String path);
    ParcelStructStat lstat(String path);
    ParcelStructStatvfs statvfs(String path);
    String readlink(String path);
    String realpath(String path);
    String[] listdir(String path);
    oneway void pipe(in ParcelFileDescriptor pipe, String path, long offset, long length);
    ParcelStructPasswd getpwuid(int uid);
    ParcelStructPasswd[] getpwent();
}