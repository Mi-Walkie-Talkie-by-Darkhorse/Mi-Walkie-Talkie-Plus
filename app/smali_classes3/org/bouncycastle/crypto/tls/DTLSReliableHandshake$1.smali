.class Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;->this$0:Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receivedHandshakeRecord(I[BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    if-ge p4, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int/lit8 v0, p3, 0x9

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v6

    add-int/lit8 v0, v6, 0xc

    if-ne p4, v0, :cond_0

    add-int/lit8 v0, p3, 0x4

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;->this$0:Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->access$100(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;)I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-static {p2, p3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v1

    const/16 v0, 0x14

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-ne p1, v0, :cond_0

    add-int/lit8 v0, p3, 0x1

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v2

    add-int/lit8 v0, p3, 0x6

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v5

    add-int v0, v5, v6

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;->this$0:Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->access$200(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;

    if-eqz v0, :cond_0

    add-int/lit8 v4, p3, 0xc

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->contributeFragment(SI[BIII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;->this$0:Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->access$200(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->access$300(Ljava/util/Hashtable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;->this$0:Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->access$400(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;->this$0:Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->access$200(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->access$500(Ljava/util/Hashtable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
