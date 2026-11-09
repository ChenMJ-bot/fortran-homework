! 程式名稱：sum_1_to_n —— 計算 1 + 2 + ... + N 的總和
program sum_1_to_n
  ! 關閉隱式宣告，所有變數都必須明確宣告型別
  implicit none
  ! 宣告 64 位元整數：n 為上限、i 為迴圈計數器、total 為累加總和（仍需注意整數溢位）
  integer(kind=8) :: n, i, total
  ! 宣告 ios 用來接收讀取輸入時的狀態碼（0 代表成功）
  integer :: ios

  ! 顯示提示文字，advance='no' 讓游標停在同一行等待輸入
  write(*,'(A)', advance='no') 'Please enter N: '
  ! 從鍵盤讀入 N，並把讀取狀態存入 ios
  read(*,*,iostat=ios) n
  ! 若讀取失敗或 N 小於 1，則視為不合法輸入
  if (ios /= 0 .or. n < 1) then
    ! 輸出錯誤訊息
    write(*,'(A)') 'Error: N must be a positive integer.'
    ! 以錯誤碼 1 結束程式
    stop 1
  ! 結束 if 判斷
  end if

  ! 將總和初始化為 0
  total = 0
  ! 迴圈：i 從 1 跑到 n
  do i = 1, n
    ! 每次把 i 加進總和
    total = total + i
  ! 結束 do 迴圈
  end do

  ! 輸出結果，I0 格式會以最少位數顯示整數
  write(*,'(A,I0,A,I0)') 'Sum of 1 to ', n, ' = ', total
! 程式結束
end program sum_1_to_n
