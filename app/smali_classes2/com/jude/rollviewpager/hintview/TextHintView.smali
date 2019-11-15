.class public Lcom/jude/rollviewpager/hintview/TextHintView;
.super Landroid/widget/TextView;
.source "TextHintView.java"

# interfaces
.implements Lcom/jude/rollviewpager/a;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    iput p1, p0, Lcom/jude/rollviewpager/hintview/TextHintView;->a:I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/jude/rollviewpager/hintview/TextHintView;->setTextColor(I)V

    packed-switch p2, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jude/rollviewpager/hintview/TextHintView;->setCurrent(I)V

    return-void

    :pswitch_0
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/jude/rollviewpager/hintview/TextHintView;->setGravity(I)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/jude/rollviewpager/hintview/TextHintView;->setGravity(I)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/jude/rollviewpager/hintview/TextHintView;->setGravity(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCurrent(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jude/rollviewpager/hintview/TextHintView;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jude/rollviewpager/hintview/TextHintView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
