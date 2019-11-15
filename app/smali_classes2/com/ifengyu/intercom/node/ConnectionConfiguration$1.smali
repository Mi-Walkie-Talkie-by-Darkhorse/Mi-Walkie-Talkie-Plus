.class final Lcom/ifengyu/intercom/node/ConnectionConfiguration$1;
.super Ljava/lang/Object;
.source "ConnectionConfiguration.java"

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
        "Landroid/os/Parcelable$Creator",
        "<",
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
.method public a(Landroid/os/Parcel;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;
    .locals 11

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {p1}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->b(Landroid/os/Parcel;)I

    move-result v0

    const/4 v7, 0x1

    move v4, v8

    move v5, v8

    move-object v3, v6

    move-object v2, v6

    move v1, v8

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    if-ge v9, v0, :cond_0

    invoke-static {p1}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->a(Landroid/os/Parcel;)I

    move-result v9

    invoke-static {v9}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->a(I)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    invoke-static {p1, v9}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->d(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v9}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->a(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v9}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->c(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v9}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->c(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v9}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->b(Landroid/os/Parcel;I)Z

    move-result v4

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v9}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->b(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_0

    :pswitch_5
    invoke-static {p1, v9}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->c(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :pswitch_6
    invoke-static {p1, v9}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->a(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_0

    :pswitch_7
    invoke-static {p1, v9}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader;->a(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    if-eq v9, v0, :cond_1

    new-instance v1, Lcom/ifengyu/intercom/node/safeparcel/SafeReader$ReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overread allowed size end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/ifengyu/intercom/node/safeparcel/SafeReader$ReadException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-direct/range {v0 .. v8}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;II)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public a(I)[Lcom/ifengyu/intercom/node/ConnectionConfiguration;
    .locals 1

    new-array v0, p1, [Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration$1;->a(Landroid/os/Parcel;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration$1;->a(I)[Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    return-object v0
.end method
