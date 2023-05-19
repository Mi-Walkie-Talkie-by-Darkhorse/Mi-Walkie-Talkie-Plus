.class public Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;
.super Ljava/lang/Object;
.source "SealSharkUpdateDeviceService.java"


# static fields
.field private static c:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;


# instance fields
.field private a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/d;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;->c:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;->c:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;

    .line 3
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;->c:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V
    .locals 3

    const-string v0, "SealSharkUpdateDeviceService"

    const-string v1, "onSealCmdReceived"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/u/a;->a()I

    move-result v0

    const/16 v1, 0x4e2e

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/u/a;->b()Lcom/google/protobuf/Message;

    move-result-object v0

    instance-of v0, v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/u/a;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/d;

    if-eqz v1, :cond_2

    .line 6
    sget-object v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;->SEAL_UP_RESULT_LOW_POWER:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;

    if-ne v0, v2, :cond_0

    .line 7
    invoke-interface {v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/d;->a()V

    goto :goto_1

    .line 8
    :cond_0
    sget-object v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;->SEAL_UP_RESULT_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->getOffset()I

    move-result p1

    invoke-interface {v1, v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/d;->b(ZI)V

    :cond_2
    :goto_1
    return-void
.end method

.method public c(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/b/a;)V
    .locals 3

    const-string v0, "SealSharkUpdateDeviceService"

    const-string v1, "onSharkCmdReceived"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/u/a;->a()I

    move-result v0

    const/16 v1, 0x4e2e

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/u/a;->b()Lcom/google/protobuf/Message;

    move-result-object v0

    instance-of v0, v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/u/a;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/d;

    if-eqz v1, :cond_2

    .line 6
    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;->SHARK_UP_RESULT_LOW_POWER:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;

    if-ne v0, v2, :cond_0

    .line 7
    invoke-interface {v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/d;->a()V

    goto :goto_1

    .line 8
    :cond_0
    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;->SHARK_UP_RESULT_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;->getOffset()I

    move-result p1

    invoke-interface {v1, v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/d;->b(ZI)V

    :cond_2
    :goto_1
    return-void
.end method

.method public d(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->l(Ljava/lang/String;)Lcom/ifengyu/intercom/i/x0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/i/x0;->C1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public e(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/b/a;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->m(Ljava/lang/String;)Lcom/ifengyu/intercom/i/y0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/i/y0;->q1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/b/a;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;->b:Ljava/lang/String;

    return-void
.end method

.method public g(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/d;

    return-void
.end method
