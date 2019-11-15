.class Lorg/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;
.super Lorg/bouncycastle/asn1/ASN1OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/ASN1OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImplicitOutputStream"
.end annotation


# instance fields
.field private first:Z

.field final synthetic this$0:Lorg/bouncycastle/asn1/ASN1OutputStream;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OutputStream;Ljava/io/OutputStream;)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;->this$0:Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;->first:Z

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;->first:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;->first:Z

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    goto :goto_0
.end method
