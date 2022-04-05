.class final Lcom/ifengyu/intercom/node/ConnectionConfiguration$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/node/ConnectionConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ifengyu/intercom/node/ConnectionConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;
    .locals 13

    invoke-static {p1}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->b(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v6, v1

    move-object v7, v6

    move-object v10, v7

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_0

    invoke-static {p1}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->a(Landroid/os/Parcel;)I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->a(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->e(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v1}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->b(Landroid/os/Parcel;I)I

    move-result v1

    move v12, v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v1}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->b(Landroid/os/Parcel;I)I

    move-result v1

    move v11, v1

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v1}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->d(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v1}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->a(Landroid/os/Parcel;I)Z

    move-result v1

    move v9, v1

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v1}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->a(Landroid/os/Parcel;I)Z

    move-result v1

    move v8, v1

    goto :goto_0

    :pswitch_5
    invoke-static {p1, v1}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->d(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_0

    :pswitch_6
    invoke-static {p1, v1}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->d(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :pswitch_7
    invoke-static {p1, v1}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->b(Landroid/os/Parcel;I)I

    move-result v1

    move v5, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ne v1, v0, :cond_1

    new-instance p1, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;II)V

    return-object p1

    :cond_1
    new-instance v1, Lcom/ifengyu/intercom/node/safeparcel/SafeReader$ReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overread allowed size end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader$ReadException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration$a;->createFromParcel(Landroid/os/Parcel;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ifengyu/intercom/node/ConnectionConfiguration;
    .locals 0

    new-array p1, p1, [Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration$a;->newArray(I)[Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object p1

    return-object p1
.end method
