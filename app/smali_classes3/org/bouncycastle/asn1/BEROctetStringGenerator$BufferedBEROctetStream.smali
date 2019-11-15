.class Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/BEROctetStringGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferedBEROctetStream"
.end annotation


# instance fields
.field private _buf:[B

.field private _derOut:Lorg/bouncycastle/asn1/DEROutputStream;

.field private _off:I

.field final synthetic this$0:Lorg/bouncycastle/asn1/BEROctetStringGenerator;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/BEROctetStringGenerator;[B)V
    .locals 2

    iput-object p1, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->this$0:Lorg/bouncycastle/asn1/BEROctetStringGenerator;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    new-instance v0, Lorg/bouncycastle/asn1/DEROutputStream;

    iget-object v1, p1, Lorg/bouncycastle/asn1/BEROctetStringGenerator;->_out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lorg/bouncycastle/asn1/DEROutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    iget v2, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/DEROctetString;->encode(Lorg/bouncycastle/asn1/DEROutputStream;[B)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->this$0:Lorg/bouncycastle/asn1/BEROctetStringGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/BEROctetStringGenerator;->writeBEREnd()V

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    iget v1, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget v0, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    iget-object v1, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lorg/bouncycastle/asn1/DEROutputStream;

    iget-object v1, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;->encode(Lorg/bouncycastle/asn1/DEROutputStream;[B)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    iget v2, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    iget v1, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    iget-object v2, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lorg/bouncycastle/asn1/DEROutputStream;

    iget-object v2, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;->encode(Lorg/bouncycastle/asn1/DEROutputStream;[B)V

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0
.end method
