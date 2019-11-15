.class public Lcom/liulishuo/filedownloader/download/b$a;
.super Ljava/lang/Object;
.source "ConnectionProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/download/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a()Lcom/liulishuo/filedownloader/download/b;
    .locals 2

    new-instance v0, Lcom/liulishuo/filedownloader/download/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/download/b;-><init>(Lcom/liulishuo/filedownloader/download/b$1;)V

    return-object v0
.end method

.method public static a(J)Lcom/liulishuo/filedownloader/download/b;
    .locals 12

    const-wide/16 v2, 0x0

    new-instance v1, Lcom/liulishuo/filedownloader/download/b;

    const-wide/16 v6, -0x1

    const/4 v10, 0x0

    move-wide v4, v2

    move-wide v8, p0

    invoke-direct/range {v1 .. v10}, Lcom/liulishuo/filedownloader/download/b;-><init>(JJJJLcom/liulishuo/filedownloader/download/b$1;)V

    return-object v1
.end method

.method public static a(JJJ)Lcom/liulishuo/filedownloader/download/b;
    .locals 12

    new-instance v1, Lcom/liulishuo/filedownloader/download/b;

    const-wide/16 v6, -0x1

    const/4 v10, 0x0

    move-wide v2, p0

    move-wide v4, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v1 .. v10}, Lcom/liulishuo/filedownloader/download/b;-><init>(JJJJLcom/liulishuo/filedownloader/download/b$1;)V

    return-object v1
.end method

.method public static a(JJJJ)Lcom/liulishuo/filedownloader/download/b;
    .locals 12

    new-instance v1, Lcom/liulishuo/filedownloader/download/b;

    const/4 v10, 0x0

    move-wide v2, p0

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v10}, Lcom/liulishuo/filedownloader/download/b;-><init>(JJJJLcom/liulishuo/filedownloader/download/b$1;)V

    return-object v1
.end method

.method public static b()Lcom/liulishuo/filedownloader/download/b;
    .locals 12

    const-wide/16 v2, 0x0

    new-instance v1, Lcom/liulishuo/filedownloader/download/b;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, v2

    invoke-direct/range {v1 .. v11}, Lcom/liulishuo/filedownloader/download/b;-><init>(JJJJZLcom/liulishuo/filedownloader/download/b$1;)V

    return-object v1
.end method
