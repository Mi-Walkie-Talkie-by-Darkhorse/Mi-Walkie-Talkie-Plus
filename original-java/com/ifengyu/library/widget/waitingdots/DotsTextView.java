package com.ifengyu.library.widget.waitingdots;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Handler;
import android.os.Looper;
import android.support.v7.widget.AppCompatTextView;
import android.text.SpannableString;
import android.util.AttributeSet;
import android.widget.TextView.BufferType;
import com.ifengyu.library.R;
import java.util.Iterator;

public class DotsTextView extends AppCompatTextView {
    private boolean autoPlay;
    private JumpingSpan dotOne;
    private JumpingSpan dotThree;
    private JumpingSpan dotTwo;
    private Handler handler;
    private boolean isHide;
    private boolean isPlaying;
    private int jumpHeight;
    private boolean lockDotOne;
    private boolean lockDotThree;
    private boolean lockDotTwo;
    private AnimatorSet mAnimatorSet = new AnimatorSet();
    private int period;
    private int showSpeed = 700;
    private long startTime;
    private float textWidth;

    public DotsTextView(Context context) {
        super(context);
        init(context, null);
    }

    public DotsTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public DotsTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        this.handler = new Handler(Looper.getMainLooper());
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.WaitingDots);
            this.period = obtainStyledAttributes.getInt(R.styleable.WaitingDots_period, 6000);
            this.jumpHeight = obtainStyledAttributes.getInt(R.styleable.WaitingDots_jumpHeight, (int) (getTextSize() / 4.0f));
            this.autoPlay = obtainStyledAttributes.getBoolean(R.styleable.WaitingDots_autoplay, true);
            obtainStyledAttributes.recycle();
        } else {
            this.period = 1000;
            this.jumpHeight = (int) (getTextSize() / 4.0f);
            this.autoPlay = true;
        }
        this.dotOne = new JumpingSpan();
        this.dotTwo = new JumpingSpan();
        this.dotThree = new JumpingSpan();
        SpannableString spannableString = new SpannableString("...​");
        spannableString.setSpan(this.dotOne, 0, 1, 33);
        spannableString.setSpan(this.dotTwo, 1, 2, 33);
        spannableString.setSpan(this.dotThree, 2, 3, 33);
        setText(spannableString, BufferType.SPANNABLE);
        this.textWidth = getPaint().measureText(".", 0, 1);
        ObjectAnimator createDotJumpAnimator = createDotJumpAnimator(this.dotOne, 0);
        createDotJumpAnimator.addUpdateListener(new InvalidateViewOnUpdate(this));
        this.mAnimatorSet.playTogether(new Animator[]{createDotJumpAnimator, createDotJumpAnimator(this.dotTwo, (long) (this.period / 6)), createDotJumpAnimator(this.dotThree, (long) ((this.period * 2) / 6))});
        this.isPlaying = this.autoPlay;
        if (this.autoPlay && !isInEditMode()) {
            start();
        }
    }

    public void start() {
        this.isPlaying = true;
        setAllAnimationsRepeatCount(-1);
        this.mAnimatorSet.start();
    }

    private ObjectAnimator createDotJumpAnimator(JumpingSpan jumpingSpan, long j) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(jumpingSpan, "translationY", new float[]{0.0f, (float) (-this.jumpHeight)});
        ofFloat.setEvaluator(new SinTypeEvaluator());
        ofFloat.setDuration((long) this.period);
        ofFloat.setStartDelay(j);
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        return ofFloat;
    }

    public void stop() {
        this.isPlaying = false;
        setAllAnimationsRepeatCount(0);
    }

    private void setAllAnimationsRepeatCount(int i) {
        Iterator it = this.mAnimatorSet.getChildAnimations().iterator();
        while (it.hasNext()) {
            Animator animator = (Animator) it.next();
            if (animator instanceof ObjectAnimator) {
                ((ObjectAnimator) animator).setRepeatCount(i);
            }
        }
    }

    public void hide() {
        createDotHideAnimator(this.dotThree, 2.0f).start();
        ObjectAnimator createDotHideAnimator = createDotHideAnimator(this.dotTwo, 1.0f);
        createDotHideAnimator.addUpdateListener(new InvalidateViewOnUpdate(this));
        createDotHideAnimator.start();
        this.isHide = true;
    }

    public void show() {
        createDotShowAnimator(this.dotThree, 2).start();
        ObjectAnimator createDotShowAnimator = createDotShowAnimator(this.dotTwo, 1);
        createDotShowAnimator.addUpdateListener(new InvalidateViewOnUpdate(this));
        createDotShowAnimator.start();
        this.isHide = false;
    }

    private ObjectAnimator createDotHideAnimator(JumpingSpan jumpingSpan, float f) {
        return createDotHorizontalAnimator(jumpingSpan, 0.0f, (-this.textWidth) * f);
    }

    private ObjectAnimator createDotShowAnimator(JumpingSpan jumpingSpan, int i) {
        return createDotHorizontalAnimator(jumpingSpan, (-this.textWidth) * ((float) i), 0.0f);
    }

    private ObjectAnimator createDotHorizontalAnimator(JumpingSpan jumpingSpan, float f, float f2) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(jumpingSpan, "translationX", new float[]{f, f2});
        ofFloat.setDuration((long) this.showSpeed);
        return ofFloat;
    }

    public void showAndPlay() {
        show();
        start();
    }

    public void hideAndStop() {
        hide();
        stop();
    }

    public boolean isHide() {
        return this.isHide;
    }

    public boolean isPlaying() {
        return this.isPlaying;
    }

    public void setJumpHeight(int i) {
        this.jumpHeight = i;
    }

    public void setPeriod(int i) {
        this.period = i;
    }
}
