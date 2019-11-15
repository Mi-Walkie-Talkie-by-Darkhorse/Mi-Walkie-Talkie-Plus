.class public abstract Lcom/xiaomi/metoknlp/geofencing/c$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/xiaomi/metoknlp/geofencing/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/metoknlp/geofencing/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/metoknlp/geofencing/c$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/xiaomi/metoknlp/geofencing/c;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.xiaomi.metoknlp.geofencing.IGeoFencing"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaomi/metoknlp/geofencing/c;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/xiaomi/metoknlp/geofencing/c;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/xiaomi/metoknlp/geofencing/c$a$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/metoknlp/geofencing/c$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.xiaomi.metoknlp.geofencing.IGeoFencing"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v0, "com.xiaomi.metoknlp.geofencing.IGeoFencing"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/metoknlp/geofencing/c$a;->a(Ljava/util/List;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "com.xiaomi.metoknlp.geofencing.IGeoFencing"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/metoknlp/geofencing/c$a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "com.xiaomi.metoknlp.geofencing.IGeoFencing"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/metoknlp/geofencing/c$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "com.xiaomi.metoknlp.geofencing.IGeoFencing"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/metoknlp/geofencing/c$a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "com.xiaomi.metoknlp.geofencing.IGeoFencing"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/metoknlp/geofencing/c$a;->b()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "com.xiaomi.metoknlp.geofencing.IGeoFencing"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/xiaomi/metoknlp/geofencing/c$a;->a(DDFJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "com.xiaomi.metoknlp.geofencing.IGeoFencing"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v9, v0

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/xiaomi/metoknlp/geofencing/c$a;->a(DDFJLandroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    :sswitch_8
    const-string v0, "com.xiaomi.metoknlp.geofencing.IGeoFencing"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/metoknlp/geofencing/c$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "com.xiaomi.metoknlp.geofencing.IGeoFencing"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/xiaomi/metoknlp/geofencing/c$a;->a(Landroid/app/PendingIntent;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
