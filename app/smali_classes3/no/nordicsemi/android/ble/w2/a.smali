.class public Lno/nordicsemi/android/ble/w2/a;
.super Ljava/lang/Object;
.source "GattError.java"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x22

    if-eq p0, v0, :cond_3

    const/16 v0, 0x101

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "GATT VALUE OUT OF RANGE"

    return-object p0

    :pswitch_1
    const-string p0, "GATT PROCEDURE IN PROGRESS"

    return-object p0

    :pswitch_2
    const-string p0, "GATT CCCD CFG ERROR"

    return-object p0

    :pswitch_3
    const-string p0, "GATT CONGESTED"

    return-object p0

    :pswitch_4
    const-string p0, "GATT NOT ENCRYPTED"

    return-object p0

    :pswitch_5
    const-string p0, "GATT ENCRYPTED NO MITM"

    return-object p0

    :pswitch_6
    const-string p0, "GATT SERVICE STARTED"

    return-object p0

    :pswitch_7
    const-string p0, "GATT INVALID CFG"

    return-object p0

    :pswitch_8
    const-string p0, "GATT MORE"

    return-object p0

    :pswitch_9
    const-string p0, "GATT AUTH FAIL"

    return-object p0

    :pswitch_a
    const-string p0, "GATT PENDING"

    return-object p0

    :pswitch_b
    const-string p0, "GATT ILLEGAL PARAMETER"

    return-object p0

    :pswitch_c
    const-string p0, "GATT CMD STARTED"

    return-object p0

    :pswitch_d
    const-string p0, "GATT ERROR"

    return-object p0

    :pswitch_e
    const-string p0, "GATT BUSY"

    return-object p0

    :pswitch_f
    const-string p0, "GATT DB FULL"

    return-object p0

    :pswitch_10
    const-string p0, "GATT WRONG STATE"

    return-object p0

    :pswitch_11
    const-string p0, "GATT INTERNAL ERROR"

    return-object p0

    :pswitch_12
    const-string p0, "GATT NO RESOURCES"

    return-object p0

    :pswitch_13
    const-string p0, "GATT INSUF RESOURCE"

    return-object p0

    :pswitch_14
    const-string p0, "GATT UNSUPPORT GRP TYPE"

    return-object p0

    :pswitch_15
    const-string p0, "GATT INSUF ENCRYPTION"

    return-object p0

    :pswitch_16
    const-string p0, "GATT ERR UNLIKELY"

    return-object p0

    :pswitch_17
    const-string p0, "GATT INVALID ATTR LEN"

    return-object p0

    :pswitch_18
    const-string p0, "GATT INSUF KEY SIZE"

    return-object p0

    :pswitch_19
    const-string p0, "GATT NOT LONG"

    return-object p0

    :pswitch_1a
    const-string p0, "GATT NOT FOUND"

    return-object p0

    :pswitch_1b
    const-string p0, "GATT PREPARE Q FULL"

    return-object p0

    :pswitch_1c
    const-string p0, "GATT INSUF AUTHORIZATION"

    return-object p0

    :pswitch_1d
    const-string p0, "GATT INVALID OFFSET"

    return-object p0

    :pswitch_1e
    const-string p0, "GATT REQ NOT SUPPORTED"

    return-object p0

    :pswitch_1f
    const-string p0, "GATT INSUF AUTHENTICATION"

    return-object p0

    :pswitch_20
    const-string p0, "GATT INVALID PDU"

    return-object p0

    :pswitch_21
    const-string p0, "GATT WRITE NOT PERMIT"

    return-object p0

    :pswitch_22
    const-string p0, "GATT READ NOT PERMIT"

    return-object p0

    :pswitch_23
    const-string p0, "GATT INVALID HANDLE"

    return-object p0

    :cond_0
    const-string p0, "GATT UNACCEPT CONN INTERVAL"

    return-object p0

    :cond_1
    const-string p0, "GATT CONTROLLER BUSY"

    return-object p0

    :cond_2
    const-string p0, "TOO MANY OPEN CONNECTIONS"

    return-object p0

    :cond_3
    const-string p0, "GATT CONN LMP TIMEOUT"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xfd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/16 v0, 0x8

    if-eq p0, v0, :cond_6

    const/16 v0, 0x13

    if-eq p0, v0, :cond_5

    const/16 v0, 0x16

    if-eq p0, v0, :cond_4

    const/16 v0, 0x22

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x85

    if-eq p0, v0, :cond_1

    const/16 v0, 0x100

    if-eq p0, v0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "GATT CONN CANCEL "

    return-object p0

    :cond_1
    const-string p0, "GATT ERROR"

    return-object p0

    :cond_2
    const-string p0, "GATT CONN FAIL ESTABLISH"

    return-object p0

    :cond_3
    const-string p0, "GATT CONN LMP TIMEOUT"

    return-object p0

    :cond_4
    const-string p0, "GATT CONN TERMINATE LOCAL HOST"

    return-object p0

    :cond_5
    const-string p0, "GATT CONN TERMINATE PEER USER"

    return-object p0

    :cond_6
    const-string p0, "GATT CONN TIMEOUT"

    return-object p0

    :cond_7
    const-string p0, "GATT CONN L2C FAILURE"

    return-object p0

    :cond_8
    const-string p0, "SUCCESS"

    return-object p0
.end method
