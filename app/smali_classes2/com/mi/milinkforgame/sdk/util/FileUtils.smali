.class public Lcom/mi/milinkforgame/sdk/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final CPY_BUFFER_SIZE:I = 0x1000

.field public static final ZIP_BUFFER_SIZE:I = 0x1000

.field public static final ZIP_FILE_EXT:Ljava/lang/String; = ".zip"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v2, 0x1000

    :try_start_2
    new-array v2, v2, [B

    :goto_0
    const/4 v4, -0x1

    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-eq v4, v5, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v2, v3

    :goto_1
    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    :goto_2
    return v0

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v0, 0x1

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_3
    invoke-static {v2}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/mi/milinkforgame/sdk/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0
.end method

.method public static doZip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "I/O Object got NullPointerException"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Target File is missing"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v2, 0x0

    invoke-static {p2}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_6

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    :goto_1
    const/4 v0, -0x1

    const/4 v2, 0x0

    array-length v3, p3

    invoke-virtual {v1, p3, v2, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    if-eq v0, v2, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    :goto_3
    if-ge v1, v3, :cond_5

    aget-object v4, v2, v1

    invoke-static {p0, v4, v0, p3}, Lcom/mi/milinkforgame/sdk/util/FileUtils;->doZip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public static readBytesFromFile(Ljava/io/File;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file is null "

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not readable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x200

    new-array v0, v0, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    throw v0

    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static readStringFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2
.end method

.method public static saveBytes2File(Ljava/io/File;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file is null "

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not writeable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    throw v1
.end method

.method public static unjar(Ljava/io/File;Ljava/io/File;)Z
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    const/16 v2, 0x2000

    new-array v4, v2, [B

    :try_start_0
    new-instance v3, Ljava/util/jar/JarInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v2}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v5

    if-eqz v5, :cond_5

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/io/File;

    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v2, v3

    :goto_2
    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :try_start_2
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_3
    const/4 v1, -0x1

    const/4 v5, 0x0

    :try_start_3
    array-length v6, v4

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/jar/JarInputStream;->read([BII)I

    move-result v5

    if-eq v1, v5, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v2, v4, v1, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v2

    goto :goto_1

    :cond_5
    :try_start_4
    invoke-virtual {v3}, Ljava/util/jar/JarInputStream;->closeEntry()V

    invoke-virtual {v3}, Ljava/util/jar/JarInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v0, 0x1

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_4
    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v2, v1

    goto :goto_2
.end method

.method public static unzip(Ljava/io/File;Ljava/io/File;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    const/16 v2, 0x2000

    new-array v4, v2, [B

    :try_start_0
    new-instance v3, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_5

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/io/File;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v2, v3

    :goto_2
    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :try_start_2
    new-instance v5, Ljava/io/File;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_3
    const/4 v1, -0x1

    const/4 v5, 0x0

    :try_start_3
    array-length v6, v4

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v5

    if-eq v1, v5, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v2, v4, v1, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v2

    goto :goto_1

    :cond_5
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v0, 0x1

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_4
    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v2, v1

    goto :goto_2
.end method

.method public static writeToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static zip(Ljava/io/File;Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Lcom/mi/milinkforgame/sdk/util/FileUtils;->zip([Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static zip([Ljava/io/File;Ljava/io/File;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    if-lt v2, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x1000

    :try_start_0
    new-array v4, v2, [B

    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v6, p1, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    array-length v5, p0

    move v3, v1

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v6, p0, v3

    const/4 v7, 0x0

    invoke-static {v2, v6, v7, v4}, Lcom/mi/milinkforgame/sdk/util/FileUtils;->doZip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;[B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_2
    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v3}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    throw v0

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method
