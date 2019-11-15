.class public Lcom/ifengyu/im/protobuf/base/DefaultHeader;
.super Lcom/ifengyu/im/protobuf/base/Header;
.source "DefaultHeader.java"


# instance fields
.field private logger:Lcom/ifengyu/im/utils/Logger;


# direct methods
.method public constructor <init>(II)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/base/Header;-><init>()V

    const-class v0, Lcom/ifengyu/im/protobuf/base/DefaultHeader;

    invoke-static {v0}, Lcom/ifengyu/im/utils/Logger;->getLogger(Ljava/lang/Class;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/base/DefaultHeader;->logger:Lcom/ifengyu/im/utils/Logger;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/base/DefaultHeader;->setVersion(S)V

    invoke-virtual {p0, v5}, Lcom/ifengyu/im/protobuf/base/DefaultHeader;->setFlag(S)V

    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/base/DefaultHeader;->setServiceId(S)V

    int-to-short v0, p2

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/base/DefaultHeader;->setCommandId(S)V

    invoke-static {}, Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;->getInstance()Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;->make()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/base/DefaultHeader;->setSeqnum(S)V

    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/protobuf/base/DefaultHeader;->setReserved(S)V

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/base/DefaultHeader;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "packet#construct Default Header -> serviceId:%d, commandId:%d, seqNo:%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
